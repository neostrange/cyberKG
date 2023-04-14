CALL apoc.load.json("https://raw.githubusercontent.com/neostrange/CveParse/main/cwe.json", null, {failOnError:false})
YIELD value
WITH value  AS data
//return data.CWE_Items[0].CWE.cwe_id
UNWIND data.CWE_Items as item
MERGE (cwe:CWE {cwe_id: item.CWE.cwe_id})
SET 
    cwe.name = item.CWE.name,
    cwe.weakness_abstraction = item.CWE.weakness_abstraction, 
    cwe.status = item.CWE.status, 
    cwe.description = item.CWE.description,  
    cwe.extended_description = item.CWE.extended_description
	
MERGE (problemType:ProblemType {value:"CWE-79"})
MERGE (cwe:CWE {cwe_id:"79"})
MERGE (problemType)-[:HAS_MAPPING]->(cwe)

MERGE (problemType:ProblemType {value:"CWE-89"})
MERGE (cwe:CWE {cwe_id:"89"})
MERGE (problemType)-[r:HAS_MAPPING]->(cwe)

MERGE (problemType:ProblemType {value:"CWE-94"})
MERGE (cwe:CWE {cwe_id:"94"})
MERGE (problemType)-[:HAS_MAPPING]->(cwe)

MERGE (problemType:ProblemType {value:"CWE-200"})
MERGE (cwe:CWE {cwe_id:"200"})
MERGE (problemType)-[:HAS_MAPPING]->(cwe)

MERGE (problemType:ProblemType {value:"CWE-284"})
MERGE (cwe:CWE {cwe_id:"284"})
MERGE (problemType)-[:HAS_MAPPING]->(cwe)

MERGE (problemType:ProblemType {value:"CWE-294"})
MERGE (cwe:CWE {cwe_id:"294"})
MERGE (problemType)-[:HAS_MAPPING]->(cwe)

MERGE (cwe1:CWE { cwe_id:"79"})
MERGE (cwe2:CWE { cwe_id:"89"})
MERGE (cwe1)-[r:HAS_RELATED_WEAKNESS{ NATURE:"ChildOf",CWEـID:"74",VIEWـID:"1003",ORDINAL:"Primary"}]->(cwe2)

MERGE (cwe1:CWE { cwe_id:"79"})
MERGE (cwe2:CWE { cwe_id:"94"})
MERGE (cwe1)-[r:HAS_RELATED_WEAKNESS{ NATURE:"ChildOf",CWEـID:"74",VIEWـID:"1000",ORDINAL:"Primary"}]->(cwe2)

MERGE (cwe1:CWE { cwe_id:"79"})
MERGE (cwe2:CWE { cwe_id:"94"})
MERGE (cwe1)-[r:HAS_RELATED_WEAKNESS{ NATURE:"ChildOf",CWEـID:"74",VIEWـID:"1003",ORDINAL:"Primary"}]->(cwe2)

MERGE (cwe1:CWE { cwe_id:"89"})
MERGE (cwe2:CWE { cwe_id:"94"})
MERGE (cwe1)-[r:HAS_RELATED_WEAKNESS{ NATURE:"ChildOf",CWEـID:"74",VIEWـID:"1003",ORDINAL:"Primary"}]->(cwe2)

