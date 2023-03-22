Profile: USCoreObservationScreeningAssessmentProfile
Parent: Observation
Id: us-core-observation-screening-assessment
Title: "US Core Observation Screening Assessment Profile"
Description: "The US Core Observation Screening Assessment Profile meets the requirements of the US Core Data for Interoperability (USCDI) Assessments. To promote interoperability and adoption through common implementation, it sets the minimum expectations for the Observation Resource to record, search, and fetch observations representing the questions and responses to surveys and screening and assessment tools. For example, a social history status such as education or food insecurity or an assessment of the patient's cognitive, functional, or disability status. It can represent a single response, multiple responses, and multi-select \"check all that apply\" type questions. It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile. It provides the floor for standards development for specific use cases."
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
* obeys us-core-2 and us-core-3
* . ^short = "Survey Observation"
* . ^definition = "\\-"
* . ^comment = "\\-"
* status MS
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    survey 1..1 MS and
    uscore 0..* MS
* category[survey] = $observation-category#survey
* category[survey] ^requirements = "Used for filtering if the observation is an assessment or screening."
* category[uscore] from $us-core-category (required)
* category[uscore] ^definition = "Used to classify the context of a screening or assessment observation."
* category[uscore] ^requirements = "Used for filtering the type of assessment or screening observation."
* code MS
* code from $us-core-survey-codes (preferred)
* subject 1.. MS
* subject only Reference(USCorePatientProfile)
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] obeys us-core-1
* effective[x] ^definition = "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the \"physiologically relevant time\"."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report."
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* effective[x] ^condition[0] = "us-core-1"
* performer only Reference(USCorePractitionerProfile or USCoreOrganizationProfile or USCorePatientProfile or PractitionerRole or USCoreCareTeam or USCoreRelatedPersonProfile)
* performer MS
* performer ^comment = "Some questions on questionnaires are not answered directly (e.g., asserted) by the individual completing the questionnaire, but are derived from answers to one or more other questions. For types of answers, `Observation.performer` should not be specified and `Observation.derivedFrom` should reference the relevant Screening Response Observation(s)."
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^comment = "An observation may have a value if it represents an individual survey, screening, or assessment question and answer pair. An observation should not have a value if it represents a multi-question or multi-select “check all that apply” responses. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value."
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^meaningWhenMissing = "For questions represented in LOINC that allow one answer, If the LOINC Normative Answer List for a LOINC code offers an adequate code for why an Observation.value may not be known, it should be used as the value for Observation.value. However, If the LOINC Normative Answer List for a LOINC code does not offer an adequate code for why an Observation.value may not be known, Observation.dataAbsentReason should be used in lieu of Observation.value."
* value[x] ^condition[0] = "us-core-2"
* value[x] ^condition[+] = "us-core-3"
* dataAbsentReason MS
* dataAbsentReason ^comment = "\"Null\" or exceptional values can be represented two ways in FHIR Observations.  One way is to simply include them in the value set and represent the exceptions in the value.  The alternate way is to use the value element for actual observations and use the explicit dataAbsentReason element to record exceptional values. For a given LOINC question, if the LOINC answer list includes concepts such as 'unknown' or 'not available', they should be used for Observation.value. Where these concepts are not part of the value set for Observation.value, the Observation.dataAbsentReason can be used if necessary and appropriate."
* dataAbsentReason ^condition[0] = "us-core-2"
* hasMember only Reference(USCoreObservationScreeningAssessmentProfile or QuestionnaireResponse or MolecularSequence)
* hasMember MS
* hasMember ^short = "Reference to panel or multi-select responses"
* hasMember ^definition = "Aggregate set of Observations that represent question answer pairs for both multi-question surveys, screenings, and assessments and multi-select questions."
* hasMember ^comment = "This grouping element is used to represent surveys, screenings, and assessments that group several questions together or individual questions with  “check all that apply” responses. For example in the simplest case a flat multi-question survey where the \"panel\" observation is the survey instrument itself and instead of an `Observation.value` the `hasMember` element references other Observation that represent the individual questions answer pairs. When there is a heirarchical grouping of questions, the observation \"panels\" can be nested. Because surveys, screenings, and assessments can be arbitrarily complex structurally, not all structures can be represented using this Observation grouping pattern."
* derivedFrom only Reference(USCoreObservationScreeningAssessmentProfile or QuestionnaireResponse or USCoreDocumentReferenceProfile or ImagingStudy or Media or MolecularSequence)
* derivedFrom MS
* derivedFrom ^short = "Related Observation(s) or other resource the observation is made from"
* derivedFrom ^definition = "Observations or or other resource such as a QuestionnaireResponse from which this observation value is derived."