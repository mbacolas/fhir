Profile: USCoreConditionEncounterDiagnosisProfile
Parent: Condition
Id: us-core-condition-encounter-diagnosis
Title: "US Core Condition Encounter Diagnosis Profile"
Description: "The US Core Condition Encounter Diagnosis Profile is based upon the core FHIR Condition Resource and meets the U.S. Core Data for Interoperability (USCDI) v2 *Encounter Diagnosis* requirements.   In version 5.0.0, The US Core Condition Profile has been split into the US Core Condition Encounter Diagnosis Profile and US Core Condition Problems and Health Concerns Profile. To promote interoperability and adoption through common implementation, this profile defines constraints and extensions on the Condition resource for the minimal set of data to record, search, and fetch information about an encounter diagnosis.  It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific use cases."
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
* extension contains $condition-assertedDate named assertedDate 0..1 MS
* clinicalStatus MS
* clinicalStatus from ConditionClinicalStatusCodes (required)
* verificationStatus MS
* verificationStatus from ConditionVerificationStatus (required)
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "category codes"
* category contains us-core 1..1 MS
* category[us-core] = $condition-category#encounter-diagnosis
* category[us-core] ^short = "encounter-diagnosis"
* code 1.. MS
* code from $us-core-condition-code (extensible)
* code ^binding.description = "Valueset to describe the actual problem experienced by the patient"
* subject only Reference(USCorePatientProfile)
* subject MS
* encounter only Reference(USCoreEncounterProfile)
* encounter MS
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* abatement[x] only dateTime or Age or Period or Range or string
* abatement[x] MS
* abatement[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* abatement[x] ^type.extension.valueBoolean = true
* recordedDate MS