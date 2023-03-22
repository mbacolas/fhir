Extension: USCoreTribalAffiliationExtension
Id: us-core-tribal-affiliation
Title: "US Core Tribal Affiliation Extension"
Description: "This Extension profile represents a tribe or band with which a person associates and, optionally, whether they are enrolled."
* ^version = "6.0.0-preview"
* ^date = "2022-09-30"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* ^context[0].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"
* ^context[+].type = #element
* ^context[=].expression = "Person"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* . 0..*
* . ^short = "Tribal Affiliation Extension"
* . ^definition = "A tribe or band with which a person associates whether or not they are an enrolled member."
* extension contains
    tribalAffiliation 1..1 MS and
    isEnrolled 0..1
* extension[tribalAffiliation] only Extension
* extension[tribalAffiliation] ^short = "Affiliated tribe or band name"
* extension[tribalAffiliation] ^definition = "Affiliated tribe or band name"
* extension[tribalAffiliation].url 1..1
* extension[tribalAffiliation].url only uri
* extension[tribalAffiliation].value[x] 1..1
* extension[tribalAffiliation].value[x] only CodeableConcept
* extension[tribalAffiliation].value[x] from $v3-TribalEntityUS (extensible)
* extension[tribalAffiliation].value[x] ^short = "Tribal Entity US"
* extension[tribalAffiliation].value[x] ^binding.description = "Tribal Entity recognized by the United States Bureau Of Indian Affairs."
* extension[isEnrolled] only Extension
* extension[isEnrolled] ^short = "Enrolled tribe member"
* extension[isEnrolled] ^definition = "Whether the individual is an enrolled tribe member"
* extension[isEnrolled].url 1..1
* extension[isEnrolled].url only uri
* extension[isEnrolled].value[x] 1..1
* extension[isEnrolled].value[x] only boolean
* url 1..1