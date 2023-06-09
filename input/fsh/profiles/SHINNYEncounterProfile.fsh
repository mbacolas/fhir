Profile: SHINNYEncounterProfile
Parent: USCoreEncounterProfile
Id: shin-ny-encounter
Title: "SHINNY Encounter Profile"
Description: "An interaction during which services are provided to the patient.  This is an extension of the base resource with some additional attribution."

* meta 1..1 MS
* meta only SHINNYMeta
* id 1..1 MS
* id ^short = "The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes."

* priority 0..1 MS
* serviceType 0..1 MS
* subject only Reference(SHINNYPatientProfile)
// * subjectStatus  0..1 MS
* episodeOfCare 0..1 MS
// * basedOn only Reference(CarePlan or ServiceRequest)


* language 0..1 MS

* participant 0..* MS
* participant.individual 1..1 MS
* participant.individual only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile)


// * participant.individual ^constraint[1].key = "us-core-6"
// * participant.individual ^constraint[=].severity = #error
// * participant ^constraint[+]. = "A participant must be present. If unavailable the Data Absent Reason Extension is present."

* appointment  MS
* diagnosis MS
* diagnosis.id 0..1 MS
* diagnosis.condition MS
* diagnosis.condition only Reference(SHINNYDiagnosisProfile or SHINNYProcedureProfile)
* partOf only Reference(SHINNYEncounterProfile)

* hospitalization.origin MS
* hospitalization.admitSource MS
* hospitalization.reAdmission MS

* location.status MS

// participant.individual only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile)


// * identifier 1..* MS
// * identifier.system 1.. MS
// * identifier.value 1.. MS
// * identifier.type ^short = "Description of identifier.  It MUST contain a single instance of MR (Medical record number)"

// * extension contains
    // SHINNYPractitionerExtension named practitioner 0..1

// * extension[practitioner] ^mustSupport = false

