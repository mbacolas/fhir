Profile: USCoreLaboratoryResultObservationProfile
Parent: Observation
Id: us-core-observation-lab
Title: "US Core Laboratory Result Observation Profile"
Description: "The US Core Laboratory Result Observation Profile is based upon the core FHIR Observation Resource, and, along with the US Core DiagnosticReport Profile for Laboratory Results Reporting, meets the U.S. Core Data for Interoperability (USCDI) v2 ‘Laboratory’ requirements.  Laboratory results are grouped and summarized using the DiagnosticReport resource which reference Observation resources.  Each Observation resource represents an individual laboratory test and result value, a “nested” panel (such as a microbial susceptibility panel) which references other observations, or rarely a laboratory test with component result values. The US Core Laboratory Result Observation Profile sets minimum expectations for the Observation resource resource to record, search, and fetch laboratory test results associated with a patient to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases."
* ^version = "5.0.1"
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
* obeys us-core-2
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* status MS
* status from ObservationStatus (required)
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains Laboratory 1..1 MS
* category[Laboratory] = $observation-category#laboratory
* code MS
* code from LOINCCodes (extensible)
* code ^short = "Laboratory Test Name"
* code ^definition = "The test that was performed.  A LOINC **SHALL** be used if the concept is present in LOINC."
* code ^comment = "The typical patterns for codes are:  1)  a LOINC code either as a translation from a \"local\" code or as a primary code, or 2)  a local code only if no suitable LOINC exists,  or 3)  both the local and the LOINC translation.   Systems SHALL be capable of sending the local code if one exists.  When using LOINC , Use either the SHORTNAME or LONG_COMMON_NAME field for the display."
* code ^alias[0] = "Test Name"
* code ^alias[+] = "Observation Identifer"
* code ^binding.description = "LOINC codes"
* subject 1.. MS
* subject only Reference(USCorePatientProfile)
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] obeys us-core-1
* effective[x] ^definition = "For lab tests this is the specimen collection date.  For Ask at Order Entry Questions (AOE)'s this is the date the question was asked."
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* effective[x] ^condition[0] = "us-core-1"
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] obeys us-core-4 and us-core-3
* value[x] ^short = "Result Value"
* value[x] ^definition = "The Laboratory result value.  If a coded value,  the valueCodeableConcept.code **SHOULD** be selected from [SNOMED CT](http://hl7.org/fhir/ValueSet/uslab-obs-codedresults) if the concept exists. If a numeric value, valueQuantity.code **SHALL** be selected from [UCUM](http://unitsofmeasure.org).  A FHIR [UCUM Codes value set](http://hl7.org/fhir/STU3/valueset-ucum-units.html) that defines all UCUM codes is in the FHIR specification."
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^condition[0] = "us-core-2"
* value[x] ^condition[+] = "us-core-3"
* value[x] ^condition[+] = "us-core-4"
* value[x] ^constraint[1].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice"
* value[x] ^constraint[=].extension.valueBoolean = true
* dataAbsentReason MS
* dataAbsentReason from DataAbsentReason (extensible)
* dataAbsentReason ^condition[0] = "us-core-2"