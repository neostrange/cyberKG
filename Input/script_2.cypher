CALL apoc.load.json("https://raw.githubusercontent.com/neostrange/CveParse/main/nvd3.json", null, {failOnError:false})
YIELD value
WITH value  AS data

UNWIND data.CVE_Items as item
MERGE (cve:CVE {id: item.cve.CVE_data_meta.ID})
ON CREATE SET cve.assigner = item.cve.CVE_data_meta.ASSIGNER

WITH item.configurations AS configurations, cve
MERGE (config:Config {version: configurations.CVE_data_version, cveId: cve.id})
MERGE (cve)-[:HAS_CONFIG]->(config)

WITH configurations, config, cve
UNWIND configurations.nodes as node
  // Each node has operator, cpe_match and  children
  //create operator for the node
  CREATE (op:Operator {operator: node.operator})
  CREATE (config)-[:HAS_OPERATOR]->(op)
  //create cpe_match for the node
  FOREACH (cpe_match in node.cpe_match |
    CREATE (cpeMatch:CpeMatch {vulnerable: cpe_match.vulnerable, uri: cpe_match.cpe23Uri})
    CREATE (cpeMatch)-[:HAS_OPERATOR]->(op))

    //children in each node -  each children then has operator, cpe_match and children
    FOREACH (child IN node.children | 
      CREATE (op1:Operator {operator: child.operator})
      CREATE (op)-[:HAS_OPERATOR]->(op1)
      FOREACH (cpe in child.cpe_match |
        CREATE (cpeMatch:CpeMatch {vulnerable: cpe.vulnerable, uri: cpe.cpe23Uri})
        MERGE (op1)-[:CPE_MATCH]->(cpeMatch))
)
