"""Converts RDF vocab files in the Turtle format (.ttl) to CSV for loading into Access tables"""
from rdflib import Graph
import csv


def convert(f):
    g = Graph(bind_namespaces="rdflib").parse(f)
    q = """
        SELECT *
        WHERE {
            ?iri a skos:Concept ;
                skos:prefLabel ?pl ;
                skos:definition ?def ;
            .
            
            OPTIONAL {
                ?iri skos:notation ?notation .
            }        
        }
        ORDER BY ?pl
    """
    id = 0
    with open(f.replace(".ttl", ".csv"), "w") as csvfile:
        wrt = csv.writer(csvfile, quoting=csv.QUOTE_MINIMAL)
        wrt.writerow(["ID", "IRI", "PREF_LABEL", "DEFINITION"])
        for r in g.query(q):
            id += 1
            wrt.writerow([id, r["iri"], r["pl"], r["def"]])


fs = [
    # "materials.ttl",
    "observable-properties.ttl",
    # "procedures-geochemistry.ttl",
    # "samplers.ttl",
    # "specimenTypes.ttl"
]

for f in fs:
    print(f"converting {f}...")
    convert(f)
print("Done")
