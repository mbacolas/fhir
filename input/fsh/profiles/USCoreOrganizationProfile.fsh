Profile: USCoreOrganizationProfile
Parent: Organization
Id: us-core-organization
Title: "US Core Organization Profile"
Description: "This profile sets minimum expectations for the Organization resource to searching for and fetching an Organization associated with a patient or provider to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases."
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
* . ^mustSupport = false
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^comment = "NPI preferred."
* identifier.system ..1 MS
* identifier.system only uri
* identifier.value ..1 MS
* identifier.value only string
* identifier contains
    NPI 0..1 MS and
    CLIA 0..1
* identifier[NPI] ^short = "National Provider Identifier (NPI)"
* identifier[NPI] ^patternIdentifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier[CLIA] ^short = "Clinical Laboratory Improvement Amendments (CLIA) Number for laboratories"
* identifier[CLIA] ^patternIdentifier.system = "urn:oid:2.16.840.1.113883.4.7"
* identifier[CLIA] ^mustSupport = false
* active 1.. MS
* name 1.. MS
* telecom MS
* telecom.system MS
* telecom.value MS
* address MS
* address.line ..4 MS
* address.line only string
* address.city ..1 MS
* address.city only string
* address.state ..1 MS
* address.state only string
* address.state from UspsTwoLetterAlphabeticCodes (extensible)
* address.state ^binding.description = "Two letter USPS alphabetic codes."
* address.postalCode ..1 MS
* address.postalCode only string
* address.postalCode ^short = "US Zip Codes"
* address.country ..1 MS
* address.country only string