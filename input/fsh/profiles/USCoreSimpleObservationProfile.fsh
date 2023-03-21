Profile: USCoreSimpleObservationProfile
Parent: Observation
Id: us-core-simple-observation
Title: "US Core Simple Observation Profile"
Description: "The US Core Simple Observation Profile meets the requirements of the US Core Data for Interoperability (USCDI) Assessments. This profile promotes interoperability and adoption through common implementation by setting minimum expectations for the Observation resource to record, search, and retrieve observations representing a practitioner's clinical observation or assertion about a patient's health status. These observations may or may not be associated with a formal survey, screening, or assessment tool. For example, a social history status such as education or food insecurity or an assessment of the patient's cognitive, functional, or disability status. This profile identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile. It provides the floor for standards development for specific use cases."
* ^version = "6.0.0-preview"
* ^date = "2022-04-20"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "assessment observation"
* . ^definition = "\\-"
* . ^comment = "\\-"
* status MS
* category 1.. MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains us-core 0..* MS
* category[us-core] from $us-core-simple-observation-category (required)
* category[us-core] ^min = 0
* code MS
* code ^binding.strength = #preferred
* subject 1.. MS
* subject only Reference($us-core-patient)
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] ^definition = "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the \"physiologically relevant time\"."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report."
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* performer only Reference(USCorePractitionerProfile or USCoreOrganizationProfile or $us-core-patient or PractitionerRole or USCoreCareTeam or USCoreRelatedPersonProfile)
* performer MS
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* derivedFrom only Reference(USCoreObservationScreeningAssessmentProfile or USCoreDocumentReferenceProfile or QuestionnaireResponse or ImagingStudy or Media or MolecularSequence)
* derivedFrom MS
* derivedFrom ^short = "Related Observation(s) or other resource the observation is made from"
* derivedFrom ^definition = "Observations or or other resource such as a QuestionnaireResponse from which this observation value is derived."