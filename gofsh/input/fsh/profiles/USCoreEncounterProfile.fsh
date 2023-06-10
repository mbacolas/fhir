Profile: USCoreEncounterProfile
Parent: Encounter
Id: us-core-encounter
Title: "US Core Encounter Profile"
Description: "This profile sets minimum expectations for the Encounter resource to record, search, and fetch basic encounter information for an individual patient to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific use cases."
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
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* identifier MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* status MS
* class MS
* type 1.. MS
* type from USCoreEncounterType (extensible)
* type ^binding.description = "Valueset to describe the Encounter Type"
* subject 1.. MS
* subject only Reference(USCorePatientProfile)
* participant MS
* participant.type MS
* participant.period MS
* participant.individual only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile or USCoreRelatedPersonProfile)
* participant.individual MS
* period MS
* reasonCode MS
* reasonReference only Reference(USCoreConditionProblemsHealthConcernsProfile or USCoreConditionEncounterDiagnosisProfile or USCoreProcedureProfile or Observation or ImmunizationRecommendation)
* reasonReference MS
* hospitalization MS
* hospitalization.dischargeDisposition MS
* hospitalization.dischargeDisposition from USCoreDischargeDisposition (preferred)
* hospitalization.dischargeDisposition ^binding.description = "[National Uniform Billing Committee](http://www.nubc.org/), manual UB-04, UB form locator 17"
* location MS
* location.location MS
* serviceProvider only Reference(USCoreOrganizationProfile)
* serviceProvider MS