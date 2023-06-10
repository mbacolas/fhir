Profile: USCorePractitionerProfile
Parent: Practitioner
Id: us-core-practitioner
Title: "US Core Practitioner Profile"
Description: "This profile sets minimum expectations for the Practitioner resource to record, search, and fetch basic demographics and other administrative information about an individual practitioner to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases."
* ^version = "5.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2022-04-20"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^alias = "Provider"
* . ^mustSupport = false
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^comment = "NPI must be supported as the identifier system in the US, Tax id is allowed, Local id is allowed in addition to another identifier supplied by a jurisdictional authority such as a practitioner's *Drug Enforcement Administration (DEA)* number."
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier contains NPI 0..1 MS
* identifier[NPI] ^patternIdentifier.system = "http://hl7.org/fhir/sid/us-npi"
* name 1.. MS
* name.family 1.. MS
* telecom MS
* telecom.system MS
* telecom.value MS
* address MS
* address.line ..4 MS
* address.city MS
* address.state MS
* address.state from UspsTwoLetterAlphabeticCodes (extensible)
* address.state ^binding.description = "Two letter USPS alphabetic codes."
* address.postalCode MS
* address.postalCode ^short = "US Zip Codes"
* address.country MS