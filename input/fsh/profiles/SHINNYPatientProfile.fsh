Profile: SHINNYPatientProfile
Parent: USCorePatientProfile
Id: shinny-patient
Title: "SHINNY Patient Profile"
Description: "Extends the USCorePatientProfile while relaxing some of the contraints"
* meta 1..1 MS
* meta only SHINNYMeta
* id 1..1 MS
* id  ^short = "The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes."
* identifier 1..* MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier.type ^short = "Description of identifier.  It MUST contain a single instance of MR (Medical record number)"
// * name 0..1 MS
// * name.family MS
// * name.given MS