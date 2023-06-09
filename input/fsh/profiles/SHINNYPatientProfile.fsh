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
* identifier.type 1.. MS
* identifier.type ^short = "Description of identifier.  It MUST contain a single instance of MR (Medical record number)"

* extension[birthsex] ^mustSupport = false
* extension[birthsex] $birthsex (preferred)
// * link only Reference(SHINNYPatientProfile or USCoreRelatedPersonProfile)

// * race MS
// * ethnicity MS
// * gender_identity MS
// * birthSex MS
* telecom MS
* deceased[x] MS

// * name 0..1 MS
// * name.family MS
// * name.given MS