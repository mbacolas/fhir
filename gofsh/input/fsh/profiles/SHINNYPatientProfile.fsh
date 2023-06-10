Profile: SHINNYPatientProfile
Parent: USCorePatientProfile
Id: shinny-patient
Title: "SHINNY Patient Profile"
Description: "Extends the USCorePatientProfile while relaxing some of the contraints"
* ^version = "0.1.0"
* id 1.. MS
* id ^short = "The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes."
* meta 1.. MS
* meta only SHINNYMeta
* identifier.type 1.. MS
* identifier.type ^short = "Description of identifier.  It MUST contain a single instance of MR (Medical record number)"
* telecom MS
* deceased[x] MS