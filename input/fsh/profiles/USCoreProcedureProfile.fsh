Profile: USCoreProcedureProfile
Parent: Procedure
Id: us-core-procedure
Title: "US Core Procedure Profile"
Description: "The US Core Procedure Profile is based upon the core FHIR Procedure Resource and meets the U.S. Core Data for Interoperability (USCDI) v2 'Procedures' requirements. This profile sets minimum expectations for the Procedure resource to record, search, and fetch procedures associated with a patient to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific use cases."
* ^version = "6.0.0-preview"
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
* obeys us-core-7
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* basedOn only Reference(USCoreCarePlanProfile or USCoreServiceRequestProfile)
* basedOn ^mustSupport = false
* status MS
* status from EventStatus (required)
* status ^condition = "us-core-7"
* code 1.. MS
* code from $us-core-procedure-code (preferred)
* code ^binding.description = "Codes describing the type of  Procedure"
* subject only Reference(USCorePatientProfile)
* subject MS
* performed[x] only dateTime or Period or string or Age or Range
* performed[x] MS
* performed[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* performed[x] ^type.extension.valueBoolean = true
* performed[x] ^condition = "us-core-7"
* recorder only Reference(SHINNYPatientProfile or RelatedPerson or Practitioner or PractitionerRole)
* asserter only Reference(SHINNYPatientProfile or RelatedPerson or Practitioner or PractitionerRole)
