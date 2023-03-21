Profile: USCoreRelatedPersonProfile
Parent: RelatedPerson
Id: us-core-relatedperson
Title: "US Core RelatedPerson Profile"
Description: "This profile sets minimum expectations for the RelatedPerson resource to record, search, and fetch related persons associated with a patient to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases."
* ^version = "5.0.1"
* ^status = #active
* ^date = "2022-04-20"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* obeys us-core-14
* . ^definition = "\\-"
* . ^comment = "\\-"
* active 1.. MS
* patient only Reference($us-core-patient)
* patient MS
* relationship MS
* relationship ^condition = "us-core-14"
* name MS
* name ^condition = "us-core-14"
* telecom MS
* address MS