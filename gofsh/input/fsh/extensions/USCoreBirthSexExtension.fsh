Extension: USCoreBirthSexExtension
Id: us-core-birthsex
Title: "US Core Birth Sex Extension"
Description: "A code classifying the person's sex assigned at birth  as specified by the [Office of the National Coordinator for Health IT (ONC)](https://www.healthit.gov/newsroom/about-onc). This extension aligns with the C-CDA Birth Sex Observation (LOINC 76689-9)."
* ^version = "5.0.1"
* ^date = "2019-05-21"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* ^context.type = #element
* ^context.expression = "Patient"
* . ..1
* . ^short = "US Core Birth Sex Extension"
* . ^definition = "A code classifying the person's sex assigned at birth  as specified by the [Office of the National Coordinator for Health IT (ONC)](https://www.healthit.gov/newsroom/about-onc)."
* . ^comment = "The codes required are intended to present birth sex (i.e., the sex recorded on the patient’s birth certificate) and not gender identity or reassigned sex."
* value[x] 1..
* value[x] only code
* value[x] from BirthSex (required)
* value[x] ^binding.description = "Code for sex assigned at birth"