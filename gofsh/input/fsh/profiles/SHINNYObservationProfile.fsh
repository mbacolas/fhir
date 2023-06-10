Profile: SHINNYObservationProfile
Parent: USCoreSimpleObservationProfile
Id: shin-ny-observation
Title: "SHINNY Observation Profile"
Description: "Measurements and simple assertions"
* ^version = "0.1.0"
* code from USCoreSimpleObservationCategory (preferred)
* code ^short = "Type of observation (code / type).  us-core-simple-observation-category is a preferred category but a local code system \nis allowed if that is what the source has provided."
* subject only Reference(SHINNYPatientProfile)
* focus only Reference(SHINNYEncounterProfile)
* performer only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile)
* referenceRange MS