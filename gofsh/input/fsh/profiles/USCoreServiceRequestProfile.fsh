Profile: USCoreServiceRequestProfile
Parent: ServiceRequest
Id: us-core-servicerequest
Title: "US Core ServiceRequest Profile"
Description: "This profile sets minimum expectations for recording, searching, and fetching  using the ServiceRequest resource to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases."
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
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* status MS
* intent MS
* category 1.. MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains us-core 0..* MS
* category[us-core] from USCoreServiceRequestCategoryCodes (required)
* code 1.. MS
* code from USCoreProcedureCodes (extensible)
* subject only Reference(USCorePatientProfile)
* subject MS
* occurrence[x] only dateTime or Period or Timing
* occurrence[x] MS
* occurrence[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* occurrence[x] ^type.extension.valueBoolean = true
* authoredOn MS
* requester only Reference(USCorePractitionerProfile or USCoreOrganizationProfile or USCorePatientProfile or PractitionerRole or USCoreRelatedPersonProfile or Device)
* requester MS