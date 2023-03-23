Profile: SHINNYPatientProfile
Parent: USCorePatientProfile
Id: shinny-patient
Title: "SHINNY Patient Profile"
Description: "Extends the USCorePatientProfile while relaxing some of the contraints"
* meta 1..1 MS
* meta only SHINNYMeta
* id 1..1 MS
* id  ^short = "Logical id of this artifact"
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier.value ^short = "The value that is unique within the system.  It MUST contain a single instance of MR (Medical record number)"
* name 0..1 MS
* name.family MS
* name.given MS