CALL apoc.load.json("https://raw.githubusercontent.com/neostrange/CveParse/main/CPE.json", null, {failOnError:false})
YIELD value
WITH value  AS data
//return data.CPE_Items[0].CPE.version
UNWIND data.CPE_Items as item
MERGE (cpe:CPE {version: item.CPE.version})
SET 
    cpe.part = item.CPE.part,
    cpe.vendor = item.CPE.vendor,
    cpe.product = item.CPE.product,
    cpe.update = item.CPE.update,
    cpe.edition = item.CPE.edition,
    cpe.language = item.CPE.language,
    cpe.sw_edition = item.CPE.sw_edition,
    cpe.target_sw = item.CPE.target_sw,
    cpe.target_hw = item.CPE.target_hw,
    cpe.other = item.CPE.other
	
MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:host_agent:7.21:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.21"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:host_agent:7.22:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.22"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:o:microsoft:windows:-:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"-"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:702:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"702"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:750:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"750"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:752:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"752"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:753:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"753"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:754:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"754"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:755:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"755"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:756:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"756"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:731:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"731"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:740:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"740"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:751:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"751"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:757:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"757"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:702:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"702"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_krnl64nuc:7.22ext:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.22ext"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_krnl64uc:7.53:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.53"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_krnl64nuc:7.22:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.22"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_kernel:7.22:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.22"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_kernel:7.53:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.53"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_kernel:7.77:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.77"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_kernel:7.81:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.81"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_kernel:7.85:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.85"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_krnl64uc:7.22ext:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.22ext"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:700:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"700"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:701:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"701"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:710:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"710"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:711:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"711"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:730:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"730"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:731:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"731"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:740:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"740"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:750:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"750"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:751:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"751"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:752:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"752"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:753:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"753"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:754:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"754"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:755:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"755"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:756:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"756"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_abap:757:*:*:*:sap_basis:*:*:*" })
MERGE (cpe:CPE {version:"757"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_as_abap_kernel:7.89:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.89"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:business_objects_business_intelligence_platform:420:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"420"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:business_planning_and_consolidation:810:*:*:*:*:microsoft:*:*" })
MERGE (cpe:CPE {version:"810"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:business_planning_and_consolidation:800:*:*:*:*:microsoft:*:*" })
MERGE (cpe:CPE {version:"800"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:netweaver_application_server_for_java:7.50:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"7.50"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:businessobjects_business_intelligence_platform:420:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"420"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:businessobjects_business_intelligence_platform:430:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"430"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:businessobjects_business_intelligence_platform:420:*:*:*:analysis:olap:*:*" })
MERGE (cpe:CPE {version:"420"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:businessobjects_business_intelligence_platform:430:*:*:*:analysis:olap:*:*" })
MERGE (cpe:CPE {version:"430"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:bank_account_management:900:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"900"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:sap:bank_account_management:800:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"800"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:a:linagora:twake:*:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"*"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:o:multilaserempresas:re708_firmware:re1200r4gc-2t2r-v3_v3411b_mul029b:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"re1200r4gc-2t2r-v3_v3411b_mul029b"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)

MERGE (cpeMatch:CpeMatch {uri:"cpe:2.3:h:multilaserempresas:re708:-:*:*:*:*:*:*:*" })
MERGE (cpe:CPE {version:"-"})
MERGE (cpeMatch)-[:MAPPED_WITH]->(cpe)
