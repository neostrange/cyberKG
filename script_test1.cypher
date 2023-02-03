CALL apoc.load.json("https://raw.githubusercontent.com/neostrange/CveParse/main/nvd3.json", null, {failOnError:false})
YIELD value
WITH value  AS data


UNWIND data.CVE_Items as item
MERGE (cve:CVE {id: item.cve.CVE_data_meta.ID})
ON CREATE SET cve.assigner = item.cve.CVE_data_meta.ASSIGNER

WITH cve, item
UNWIND item.cve.problemtype.problemtype_data AS problem
UNWIND problem.description AS problem_desc
MERGE (cve)-[:PROBLEM_TYPE]->(problemType:ProblemType {lang: problem_desc.lang, value: problem_desc.value})
//MERGE (cve)-[:PROBLEM_TYPE]->(problemType)


WITH item, cve
UNWIND item.cve.references.reference_data AS ref
MERGE (reference:Reference {url: ref.url})
ON CREATE SET reference.name = ref.name, reference.refsource = ref.refsource

WITH item, cve, reference, ref
UNWIND ref.tags AS tag
MERGE (tagNode:Tag {name: tag, id: tag})
MERGE (reference)-[:TAGGED_WITH]->(tagNode)

WITH item, cve, reference
UNWIND item.cve.description.description_data AS desc
MERGE (description:Description {lang: desc.lang, value:desc.value, cveId:cve.id})
//ON CREATE SET description.value = desc.value

//WITH item, cve, reference, description
MERGE (cve)-[:HAS_REFERENCE]->(reference)
MERGE (cve)-[:HAS_DESCRIPTION]->(description)



WITH item, cve,item.impact.baseMetricV3 as baseMetricV3, item.impact.baseMetricV3.cvssV3 as cvssV3
MERGE (cve)-[:HAS_IMPACT]->(impact:IMPACT {exploitabilityScore: baseMetricV3.exploitabilityScore, 
                                           impactScore: baseMetricV3.impactScore, cveId: cve.id
})-[:HAS_CVSSV3]->(cvssv3:CVSSV3 {version: cvssV3.version,
                                              vectorString:cvssV3.vectorString,
                                              attackVector:cvssV3.attackVector,
                                              attackComplexity:cvssV3.attackComplexity,
                                              privilegesRequired:cvssV3.privilegesRequired,
                                              userInteraction:cvssV3.userInteraction,
                                              scope:cvssV3.scope,
                                              confidentialityImpact:cvssV3.confidentialityImpact,
                                              integrityImpact:cvssV3.integrityImpact,
                                              availabilityImpact:cvssV3.availabilityImpact,
                                              baseScore:cvssV3.baseScore,
                                              baseSeverity:cvssV3.baseSeverity 
})


WITH item, cve
UNWIND item.configurations.nodes as config
MERGE (configNode:CONFIG {operator: config.operator, cveId: cve.id})
WITH item, cve, configNode, config
UNWIND config.children as configChild
UNWIND configChild.cpe_match AS cpe
MERGE (cpeNode:CPE {cpe23Uri: cpe.cpe23Uri})
ON CREATE SET cpeNode.vulnerable = cpe.vulnerable

WITH item, cve, configNode, cpeNode
MERGE (cve)-[:AFFECTS]->(configNode)
MERGE (configNode)-[:HAS_CPE]->(cpeNode)

//WITH item, impact, item.impact.baseMetricV3.cvssV3 as cvssV3
