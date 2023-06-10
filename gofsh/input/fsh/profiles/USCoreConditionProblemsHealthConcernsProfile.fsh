Profile: USCoreConditionProblemsHealthConcernsProfile
Parent: Condition
Id: us-core-condition-problems-health-concerns
Title: "US Core Condition Problems and Health Concerns Profile"
Description: "The US Core Condition Problems and Health Concerns Profile is based upon the core FHIR Condition Resource and meets the  U.S. Core Data for Interoperability (USCDI) v2 'Problems' and 'Health Concerns' requirements and SDOH 'Problems/Health Concerns' requirements.  In version 5.0.0, The US Core Condition Profile has been split into the US Core Condition Encounter Diagnosis Profile and US Core Condition Problems and Health Concerns Profile.  To promote interoperability and adoption through common implementation, this profile defines constraints and extensions on the Condition resource for the minimal set of data to record, search, and fetch information about a condition, diagnosis, or other event, situation, issue, or clinical concept that is documented and categorized as a problem or health concern including information about a Social Determinants of Health-related condition. It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases."
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
* category contains
    us-core 1..* MS and
    sdoh 0..1 MS
* category[us-core] from USCoreProblemOrHealthConcern (required)
* category[us-core] ^short = "problem-list-item | health-concern"
* category[sdoh] = $us-core-tags#sdoh
* code 1.. MS
* code from USCoreConditionCodes (extensible)
* code ^binding.description = "Valueset to describe the actual problem experienced by the patient"
* subject only Reference(USCorePatientProfile)
* subject MS
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* abatement[x] only dateTime or Age or Period or Range or string
* abatement[x] MS
* abatement[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* abatement[x] ^type.extension.valueBoolean = true
* recordedDate MS