Extension: USCoreGenderIdentityExtension
Parent: $patient-genderIdentity
Id: us-core-genderIdentity
Title: "US Core Gender Identity Extension"
Description: "This extension provides concepts to describe the gender a person identifies as."
* ^version = "5.0.1"
* ^status = #active
* ^date = "2022-01-22"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^purpose = "Complies with USCDI v2"
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* ^context[1].type = #element
* ^context[=].expression = "RelatedPerson"
* ^context[+].type = #element
* ^context[=].expression = "Person"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* value[x] from $2.16.840.1.113762.1.4.1021.32 (extensible)