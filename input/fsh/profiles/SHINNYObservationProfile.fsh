Profile: SHINNYObservationProfile
Parent: USCoreSimpleObservationProfile
Id: shin-ny-observation
Title: "SHINNY Observation Profile"
Description: "Measurements and simple assertions"

* meta 1..1 MS
* meta only SHINNYMeta
* id 1..1 MS
* id  ^short = "The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes."

* code from http://hl7.org/fhir/us/core/ValueSet/us-core-simple-observation-category (preferred)
* code ^short = "Type of observation (code / type).  us-core-simple-observation-category is a preferred category but a local code system 
is allowed if that is what the source has provided."
// * code 0..* MS

* subject only Reference(SHINNYPatientProfile)
* focus only Reference(SHINNYEncounterProfile)
* hasMember only Reference(SHINNYObservationProfile or QuestionnaireResponse or MolecularSequence)

// * derivedFrom only Reference(SHINNYObservationProfile or USCoreDocumentReferenceProfile or QuestionnaireResponse or ImagingStudy or MolecularSequence)
// * derivedFrom only Reference(SHINNYObservationProfile or USCoreDocumentReferenceProfile or USCoreQuestionnaireResponseProfile)

// ADD PATIENT, ORG...
* performer only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile)


* referenceRange MS