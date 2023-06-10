Profile: SHINNYEncounterProfile
Parent: USCoreEncounterProfile
Id: shin-ny-encounter
Title: "SHINNY Encounter Profile"
Description: "An interaction during which services are provided to the patient.  This is an extension of the base resource with some additional attribution."
* ^version = "0.1.0"
* id 1.. MS
* id ^short = "The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes."
* meta 1.. MS
* meta only SHINNYMeta
* language MS
* serviceType MS
* priority MS
* subject only Reference(SHINNYPatientProfile)
* episodeOfCare ..1 MS
* participant.individual 1..
* participant.individual only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile)
* appointment MS
* diagnosis MS
* diagnosis.id MS
* diagnosis.condition only Reference(SHINNYDiagnosisProfile or SHINNYProcedureProfile)
* diagnosis.condition MS
* hospitalization.origin MS
* hospitalization.admitSource MS
* hospitalization.reAdmission MS
* location.status MS
* partOf only Reference(SHINNYEncounterProfile)
* partOf ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
* partOf ^type.extension.valueBoolean = true