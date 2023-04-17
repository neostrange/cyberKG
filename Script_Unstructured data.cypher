CREATE (node1:Frame {text:"gains",type:"verb"}),
       (node2:Frame_Argument{text:"an attacker",type:"ARG0"}),
       (node3:Reference{text:"who",type:"R-ARG0"}),
       (node4:Frame_Argument{text:"local membership",type:"ARG1"}),
       (node5:Frame_Argument{text:"to SAP_LocalAdmin",type:"ARG4"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0012"})
MERGE (frame:Frame {text:"gains"})
MERGE (description)-[:MAPPED_WITH]->(frame)

CREATE (node1:Frame {text:"be",type:"verb"}),
       (node2:Frame_Argument{text:"an attacker who gains local membership to SAP_LocalAdmin",type:"ARG1"}),
       (node3:Modifier_Modal{text:"could",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"able to replace executables with a malicious file that will be started under a privileged account",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0012"})
MERGE (frame:Frame {text:"be"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"replace",type:"verb"}),
       (node2:Frame_Argument{text:"executables",type:"ARG1"}),
       (node3:Frame_Argument{text:"an attacker who gains local membership to SAP_LocalAdmin",type:"ARG2"}),
       (node4:Frame_Argument{text:"with a malicious file that will be started under a privileged account",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0012"})
MERGE (frame:Frame {text:"replace"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"started",type:"verb"}),
       (node2:Frame_Argument{text:"a malicious file",type:"ARG1"}),
       (node3:Reference{text:"that",type:"R-ARG1"}),
       (node4:Modifier_Modal{text:"will",type:"ARGM-MOD"}),
       (node5:Modifier_Location{text:"under a privileged account",type:"ARGM-LOC"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0012"})
MERGE (frame:Frame {text:"started"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"Note",type:"verb"}),
       (node2:Modifier_Location{text:"In SAP",type:"ARGM-LOC"}),
       (node3:Frame_Argument{text:"that by default all user members of SAP_LocaAdmin are denied the ability to logon locally by security policy so that this can only occur if the system has already been compromised",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0012"})
MERGE (frame:Frame {text:"Note"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"denied",type:"Verb"}),
       (node2:Modifier_Manner{text:"by default all user members of",type:"ARGM-MNR"}),
       (node3:Frame_Argument{text:"the ability to logon locally by security policy",type:"ARG1"}),
       (node4:Modifier_Purpose{text:"so that this can only occur if the system has already been compromised",type:"ARGM-PRP"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0012"})
MERGE (frame:Frame {text:"denied"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"logon",type:"Verb"}),
       (node2:Frame_Argument{text:"locally",type:"ARG1"}),
       (node3:Frame_Argument{text:"by security",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0012"})
MERGE (frame:Frame {text:"logon"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"occur",type:"Verb"}),
       (node2:Frame_Argument{text:"this",type:"ARG1"}),
       (node3:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node4:Modifier_Adverbial{text:"only",type:"ARGM-ADV"}),
       (node5:Modifier_Adverbial{text:"if the system has already been compromised",type:"ARGM-ADV"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0012"})
MERGE (frame:Frame {text:"occur"})
MERGE (description)-[:MAPPED_WITH]->(frame)    

CREATE (node1:Frame {text:"compromised",type:"Verb"}),
       (node2:Frame_Argument{text:"the system",type:"ARG1"}),
       (node3:Modifier_Temporal{text:"already",type:"ARGM-TMP"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0012"})
MERGE (frame:Frame {text:"compromised"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"encode",type:"Verb"}),
       (node2:Frame_Argument{text:"The ABAP Keyword Documentation of SAP NetWeaver Application Server - versions 702 , 731 , 740 , 750 , 751 , 752 , 753 , 754 , 755 , 756 , 757 , for ABAP and ABAP Platform",type:"ARG0"}),
       (node3:Modifier_Negation{text:"not",type:"ARGM-NEG"}),
       (node4:Modifier_Manner{text:"sufficiently",type:"ARGM-MNR"}),
       (node5:Frame_Argument{text:"user - controlled inputs",type:"ARG1"}),
       (node6:Modifier_Adverbial{text:"resulting in Cross - Site Scripting ( XSS ) vulnerability . On successful exploitation an attacker can cause limited impact on confidentiality and integrity of the application",type:"ARGM-ADV"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1),
       (node6)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0013"})
MERGE (frame:Frame {text:"encode"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"controlled",type:"Verb"}),
       (node2:Frame_Argument{text:"user",type:"ARG0"}),
       (node3:Frame_Argument{text:"inputs",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0013"})
MERGE (frame:Frame {text:"controlled"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"cause",type:"Verb"}),
       (node2:Modifier_Location{text:"On successful exploitation",type:"ARGM-LOC"}),
       (node3:Frame_Argument{text:"an attacker",type:"ARG0"}),
       (node4:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node5:Frame_Argument{text:"limited impact on confidentiality and integrity of the application",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0013"})
MERGE (frame:Frame {text:"cause"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"creates",type:"Verb"}),
       (node2:Frame_Argument{text:"SAP NetWeaver ABAP Server and ABAP Platform - versions SAP_BASIS 700 , 701 , 702 , 710 , 711 , 730 , 731 , 740 , 750 , 751 , 752 , 753 , 754 , 755 , 756 , 757 , KERNEL 7.22 , 7.53 , 7.77 , 7.81 , 7.85 , 7.89 , KRNL64UC 7.22 , 7.22EXT , 7.53 , KRNL64NUC 7.22 , 7.22EXT",type:"ARG0"}),
       (node3:Frame_Argument{text:"information about system identity",type:"ARG1"}),
       (node4:Modifier_Location{text:"in an ambiguous format",type:"ARGM-LOC"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0014"})
MERGE (frame:Frame {text:"creates"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"lead",type:"Verb"}),
       (node2:Frame_Argument{text:"This",type:"ARG0"}),
       (node3:Modifier_Modal{text:"could",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"to capture - replay vulnerability",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0014"})
MERGE (frame:Frame {text:"lead"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"may",type:"Verb"}),
       (node2:Modifier_Modal{text:"could",type:"ARGM-MOD"}),
       (node3:Frame_Argument{text:"be exploited by malicious users to obtain illegitimate access to the system",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0014"})
MERGE (frame:Frame {text:"may"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"exploited",type:"Verb"}),
       (node2:Frame_Argument{text:"This",type:"ARG1"}),
       (node3:Modifier_Modal{text:"may",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"by malicious users",type:"ARG0"}),
       (node5:Frame_Argument{text:"to obtain illegitimate access to the system",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0014"})
MERGE (frame:Frame {text:"exploited"})
MERGE (description)-[:MAPPED_WITH]->(frame)     

CREATE (node1:Frame {text:"return",type:"Verb"}),
       (node2:Frame_Argument{text:"some calls",type:"ARG0"}),
       (node3:Frame_Argument{text:"json",type:"ARG1"}),
       (node4:Modifier_Manner{text:"with wrong content type",type:"ARGM-MNR"}),
       (node5:Modifier_Manner{text:"in the header of the",type:"ARGM-MNR"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0015"})
MERGE (frame:Frame {text:"return"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"calls",type:"Verb"}),
       (node2:Frame_Argument{text:"a custom application",type:"ARG0"}),
       (node3:Reference{text:"that",type:"R-ARG0"}),
       (node4:Modifier_Manner{text:"directly",type:"ARGM-MNR"}),
       (node5:Frame_Argument{text:"the jsp of Web Intelligence",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0015"})
MERGE (frame:Frame {text:"calls"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"be",type:"Verb"}),
       (node2:Frame_Argument{text:"a custom application that calls directly the jsp of Web Intelligence DHTML",type:"ARG1"}),
       (node3:Modifier_Modal{text:"may",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"vulnerable to XSS attacks",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0015"})
MERGE (frame:Frame {text:"be"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"cause",type:"Verb"}),
       (node2:Modifier_Location{text:"On successful exploitation",type:"ARGM-LOC"}),
       (node3:Frame_Argument{text:"an attacker",type:"ARG0"}),
       (node4:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node5:Frame_Argument{text:"limited impact on confidentiality and integrity of the application",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0015"})
MERGE (frame:Frame {text:"cause"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"allows",type:"Verb"}),
       (node2:Frame_Argument{text:"SAP BPC MS 10.0 - version 810",type:"ARG0"}),
       (node3:Frame_Argument{text:"an unauthorized attacker to execute crafted database queries",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0016"})
MERGE (frame:Frame {text:"allows"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"execute",type:"Verb"}),
       (node2:Frame_Argument{text:"an unauthorized attacker",type:"ARG0"}),
       (node3:Frame_Argument{text:"crafted database queries",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0016"})
MERGE (frame:Frame {text:"execute"})
MERGE (description)-[:MAPPED_WITH]->(frame)       

CREATE (node1:Frame {text:"lead",type:"Verb"}),
       (node2:Frame_Argument{text:"The exploitation of this issue",type:"ARG0"}),
       (node3:Modifier_Modal{text:"could",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"to SQL injection vulnerability",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0016"})
MERGE (frame:Frame {text:"lead"})
MERGE (description)-[:MAPPED_WITH]->(frame)    

CREATE (node1:Frame {text:"could",type:"Verb"}),
       (node2:Frame_Argument{text:"The exploitation of this issue",type:"ARG0"}),
       (node3:Modifier_Modal{text:"could",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"allow an attacker to access , modify , and/or delete data from the backend database",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0016"})
MERGE (frame:Frame {text:"could"})
MERGE (description)-[:MAPPED_WITH]->(frame)     

CREATE (node1:Frame {text:"allow",type:"Verb"}),
       (node2:Frame_Argument{text:"The exploitation of this issue",type:"ARG0"}),
       (node3:Modifier_Modal{text:"could",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"an attacker to access , modify , and/or delete data from the backend database",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0016"})
MERGE (frame:Frame {text:"allow"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"can",type:"Verb"}),
       (node2:Frame_Argument{text:"An unauthenticated attacker in SAP NetWeaver AS for Java - version 7.50",type:"ARG0"}),
       (node3:Frame_Argument{text:"attach to an open interface and make use of an open naming and directory API to access services which can be used to perform unauthorized operations affecting users and data on the current",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"can"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"attach",type:"Verb"}),
       (node2:Frame_Argument{text:"An unauthenticated attacker in SAP NetWeaver AS for Java - version 7.50 , due to improper access control",type:"ARG0"}),
       (node3:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"to an open interface",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"attach"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"make",type:"Verb"}),
       (node2:Frame_Argument{text:"An unauthenticated attacker in SAP NetWeaver AS for Java - version 7.50 , due to improper access control",type:"ARG0"}),
       (node3:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"use of an open naming and directory API to access services which can be used to perform unauthorized operations affecting users and data on the current system",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"make"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"used",type:"Verb"}),
       (node2:Frame_Argument{text:"access services",type:"ARG1"}),
       (node3:Reference{text:"which",type:"R-ARG1"}),
       (node4:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node5:Frame_Argument{text:"to perform unauthorized operations affecting users and data on the current system",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"used"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"perform",type:"Verb"}),
       (node2:Frame_Argument{text:"access services",type:"ARG0"}),
       (node3:Frame_Argument{text:"unauthorized operations affecting users and data on the current system",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"perform"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"affecting",type:"Verb"}),
       (node2:Frame_Argument{text:"unauthorized operations",type:"ARG0"}),
       (node3:Frame_Argument{text:"users",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"affecting"})
MERGE (description)-[:MAPPED_WITH]->(frame)    

CREATE (node1:Frame {text:"could",type:"Verb"}),
       (node2:Frame_Argument{text:"This",type:"ARG0"}),
       (node3:Frame_Argument{text:"allow the attacker to have full read access to user data , make modifications to user data , and make services within the system unavailable",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"could"})
MERGE (description)-[:MAPPED_WITH]->(frame)     

CREATE (node1:Frame {text:"allow",type:"Verb"}),
       (node2:Frame_Argument{text:"This",type:"ARG0"}),
       (node3:Modifier_Modal{text:"could",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"the attacker to have full read access to user data , make modifications to user data , and make services within the system unavailable",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"allow"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"have",type:"Verb"}),
       (node2:Frame_Argument{text:"the attacker",type:"ARG0"}),
       (node3:Frame_Argument{text:"full read access to user data",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"have"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"user",type:"Verb"}),
       (node2:Frame_Argument{text:"full read",type:"ARG0"}),
       (node3:Frame_Argument{text:"data",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"user"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"make",type:"Verb"}),
       (node2:Frame_Argument{text:"the attacker",type:"ARG0"}),
       (node3:Frame_Argument{text:"modifications to user data , and make",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"make"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"make",type:"Verb"}),
       (node2:Frame_Argument{text:"the attacker",type:"ARG0"}),
       (node3:Frame_Argument{text:"services within the system",type:"ARG1"}),
       (node4:Modifier_Manner{text:"unavailable",type:"ARGM-MNR"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0017"})
MERGE (frame:Frame {text:"make"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"controlled",type:"Verb"}),
       (node2:Frame_Argument{text:"user",type:"ARG0"}),
       (node3:Frame_Argument{text:"input",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"controlled"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"modify",type:"Verb"}),
       (node2:Modifier_Cause{text:"Due to improper input sanitization of user - controlled input in SAP BusinessObjects Business Intelligence",type:"ARGM-CAU"}),
       (node3:Frame_Argument{text:"an attacker with basic user - level privileges",type:"ARG0"}),
       (node4:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node5:Frame_Argument{text:"reports containing a malicious payload",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"modify"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"containing",type:"Verb"}),
       (node2:Frame_Argument{text:"reports",type:"ARG0"}),
       (node3:Frame_Argument{text:"a malicious payload",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"containing"})
MERGE (description)-[:MAPPED_WITH]->(frame)       

CREATE (node1:Frame {text:"are",type:"Verb"}),
       (node2:Frame_Argument{text:"these reports",type:"ARG1"}),
       (node3:Frame_Argument{text:"viewable",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"are"})
MERGE (description)-[:MAPPED_WITH]->(frame)

CREATE (node1:Frame {text:"opens",type:"Verb"}),
       (node2:Frame_Argument{text:"anyone",type:"ARG0"}),
       (node3:Reference{text:"who",type:"R-ARG0"}),
       (node4:Frame_Argument{text:"those reports",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"opens"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"be",type:"Verb"}),
       (node2:Frame_Argument{text:"anyone who opens those reports",type:"ARG1"}),
       (node3:Modifier_Modal{text:"would",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"susceptible to stored XSS attacks",type:"ARG2"}),
       (node5:Modifier_Cause{text:"As",type:"ARGM-CAU"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"be"})
MERGE (description)-[:MAPPED_WITH]->(frame)    

CREATE (node1:Frame {text:"maintained",type:"Verb"}),
       (node2:Frame_Argument{text:"information",type:"ARG1"}),
       (node3:Modifier_Location{text:"in the victim 's web browser",type:"ARGM-LOC"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"maintained"})
MERGE (description)-[:MAPPED_WITH]->(frame)

CREATE (node1:Frame {text:"read",type:"Verb"}),
       (node2:Modifier_Cause{text:"As a result of the attack",type:"ARGM-CAU"}),
       (node3:Frame_Argument{text:"information maintained in the victim 's web browser",type:"ARG1"}),
       (node4:Modifier_Modal{text:"can",type:"ARGM-MOD"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"read"})
MERGE (description)-[:MAPPED_WITH]->(frame) 


CREATE (node1:Frame {text:"modified",type:"Verb"}),
       (node2:Frame_Argument{text:"information maintained in the victim 's web browser",type:"ARG1"}),
       (node3:Modifier_Modal{text:"can",type:"ARGM-MOD"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"modified"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"sent",type:"Verb"}),
       (node2:Frame_Argument{text:"information maintained in the victim 's web browser",type:"ARG1"}),
       (node3:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"to the attacker",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0018"})
MERGE (frame:Frame {text:"sent"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"allows",type:"Verb"}),
       (node2:Frame_Argument{text:"SAP BusinessObjects Business Intelligence Analysis edition for OLAP",type:"ARG0"}),
       (node3:Frame_Argument{text:"an authenticated attacker to inject malicious code that can be executed by the application over the network . On successful exploitation , an attacker can perform operations that may completely compromise the application causing a high impact on the confidentiality , integrity , and availability of the application",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0022"})
MERGE (frame:Frame {text:"allows"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"inject",type:"Verb"}),
       (node2:Frame_Argument{text:"an authenticated attacker",type:"ARG0"}),
       (node3:Frame_Argument{text:"malicious code that can be executed by the application over the network . On successful exploitation",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0022"})
MERGE (frame:Frame {text:"inject"})
MERGE (description)-[:MAPPED_WITH]->(frame)       


CREATE (node1:Frame {text:"executed",type:"Verb"}),
       (node2:Frame_Argument{text:"malicious code",type:"ARG1"}),
       (node3:Reference{text:"that",type:"R-ARG1"}),
       (node4:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node5:Frame_Argument{text:"by the application over the network",type:"ARG0"}),
      
       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0022"})
MERGE (frame:Frame {text:"executed"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"perform",type:"Verb"}),
       (node2:Frame_Argument{text:"an attacker",type:"ARG0"}),
       (node3:Modifier_Modal{text:"can",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"operations",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0022"})
MERGE (frame:Frame {text:"perform"})
MERGE (description)-[:MAPPED_WITH]->(frame)      

CREATE (node1:Frame {text:"compromise",type:"Verb"}),
       (node2:Frame_Argument{text:"operations",type:"ARG0"}),
       (node3:Reference{text:"that",type:"R-ARG0"}),
       (node4:Modifier_Modal{text:"may",type:"ARGM-MOD"}),
       (node5:Modifier_Extent{text:"completely",type:"ARGM-EXT"}),
       (node6:Frame_Argument{text:"the application causing a high impact on the confidentiality , integrity , and availability of the application",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1),
       (node5)-[:HAS_ARGUMENT]->(node1),
       (node6)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0022"})
MERGE (frame:Frame {text:"compromise"})
MERGE (description)-[:MAPPED_WITH]->(frame)   

CREATE (node1:Frame {text:"causing",type:"Verb"}),
       (node2:Frame_Argument{text:"the application",type:"ARG0"}),
       (node3:Frame_Argument{text:"a high impact on the confidentiality , integrity , and availability of the application",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0022"})
MERGE (frame:Frame {text:"causing"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"clicks",type:"Verb"}),
       (node2:Modifier_Temporal{text:"when",type:"ARGM-TMP"}),
       (node3:Frame_Argument{text:"a user",type:"ARG0"}),
       (node4:Frame_Argument{text:"a smart link to navigate to another app",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0023"})
MERGE (frame:Frame {text:"clicks"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"navigate",type:"Verb"}),
       (node2:Frame_Argument{text:"a user",type:"ARG0"}),
       (node3:Frame_Argument{text:"to another app",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0023"})
MERGE (frame:Frame {text:"navigate"})
MERGE (description)-[:MAPPED_WITH]->(frame)

CREATE (node1:Frame {text:"shown",type:"Verb"}),
       (node2:Modifier_Location{text:"In SAP Bank Account Management ( Manage Banks ) application",type:"ARGM-LOC"}),
       (node3:Modifier_Temporal{text:"when a user clicks a smart link to navigate to another app",type:"ARGM-TMP"}),
       (node4:Frame_Argument{text:"personal data",type:"ARG1"}),
       (node5:Modifier_Manner{text:"directly",type:"ARGM-MNR"}),
       (node6:Modifier_Location{text:"in the URL",type:"ARGM-LOC"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1), 
       (node5)-[:HAS_ARGUMENT]->(node1),
       (node6)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0023"})
MERGE (frame:Frame {text:"shown"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"get",type:"Verb"}),
       (node2:Frame_Argument{text:"They",type:"ARG1"}),
       (node3:Modifier_Modal{text:"might",type:"ARGM-MOD"}),
       (node4:Frame_Argument{text:"captured in log files , bookmarks , and so on disclosing sensitive data of the application",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0023"})
MERGE (frame:Frame {text:"get"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"captured",type:"Verb"}),
       (node2:Frame_Argument{text:"They",type:"ARG1"}),
       (node3:Modifier_Modal{text:"might",type:"ARGM-MOD"}),
       (node4:Modifier_Location{text:"in log files , bookmarks",type:"ARGM-LOC"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0023"})
MERGE (frame:Frame {text:"captured"})
MERGE (description)-[:MAPPED_WITH]->(frame)     

CREATE (node1:Frame {text:"Stored",type:"Verb"}),
       (node2:Frame_Argument{text:")",type:"ARG0"}),
       (node3:Frame_Argument{text:"in GitHub repository linagora / twake",type:"ARG1"}),
       (node4:Modifier_Temporal{text:"prior to 2023.Q1.1200 +",type:"ARGM-TMP"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0028"})
MERGE (frame:Frame {text:"Stored"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"found",type:"Verb"}),
       (node2:Frame_Argument{text:"A vulnerability",type:"ARG1"}),
       (node3:Modifier_Location{text:"in Multilaser RE708 RE1200R4GC-2T2R - V3_v3411b_MUL029B.",type:"ARGM-LOC"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0029"})
MERGE (frame:Frame {text:"found"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"rated",type:"Verb"}),
       (node2:Frame_Argument{text:"in Multilaser RE708 RE1200R4GC-2T2R - V3_v3411b_MUL029B",type:"ARG2"}),
       (node3:Frame_Argument{text:"It",type:"ARG1"}),
       (node4:Frame_Argument{text:"as problematic",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0029"})
MERGE (frame:Frame {text:"rated"})
MERGE (description)-[:MAPPED_WITH]->(frame) 

CREATE (node1:Frame {text:"affects",type:"Verb"}),
       (node2:Frame_Argument{text:"This issue",type:"ARG0"}),
       (node3:Frame_Argument{text:"some unknown processing of the component Telnet Service",type:"ARG1"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0029"})
MERGE (frame:Frame {text:"affects"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"leads",type:"Verb"}),
       (node2:Frame_Argument{text:"The manipulation",type:"ARG0"}),
       (node3:Frame_Argument{text:"to denial of service",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0029"})
MERGE (frame:Frame {text:"leads"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"initiated",type:"Verb"}),
       (node2:Frame_Argument{text:"The attack",type:"ARG1"}),
       (node3:Modifier_Modal{text:"may",type:"ARGM-MOD"}),
       (node4:Modifier_Manner{text:"remotely",type:"ARGM-MNR"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1),
       (node4)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0029"})
MERGE (frame:Frame {text:"initiated"})
MERGE (description)-[:MAPPED_WITH]->(frame)  

CREATE (node1:Frame {text:"assigned",type:"Verb"}),
       (node2:Frame_Argument{text:"The identifier VDB-217169",type:"ARG1"}),
       (node3:Frame_Argument{text:"to this vulnerability",type:"ARG2"}),

       (node2)-[:HAS_ARGUMENT]->(node1),
       (node3)-[:HAS_ARGUMENT]->(node1)

MERGE (description:Description {cveId:"CVE-2023-0029"})
MERGE (frame:Frame {text:"assigned"})
MERGE (description)-[:MAPPED_WITH]->(frame)       

