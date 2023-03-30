Profile: SHINNYProcedureProfile
Parent: USCoreProcedureProfile
Id: shin-ny-procedure
Title: "SHINNY Procedure Profile"
Description: "An action that is being or was performed on a patient"

// * code from http://hl7.org/fhir/us/core/ValueSet/us-core-simple-observation-category (preferred)
// * code ^short = "Type of observation (code / type).  us-core-simple-observation-category is a preferred category but a local code system 
// is allowed if that is what the source has provided."

// * code from $us-core-procedure-code (preferred)
// * code ^binding.description = "Codes describing the type of  Procedure"
// * status 0..

* language MS
* basedOn MS
* partOf MS
* partOf only Reference(SHINNYProcedureProfile or SHINNYObservationProfile)
* subject only Reference(SHINNYPatientProfile)
* performer MS
* performer.actor only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile)
* location MS
* reasonCode MS
* reasonReference MS
* reasonReference only Reference(SHINNYDiagnosisProfile or SHINNYProcedureProfile or SHINNYObservationProfile)
* bodySite MS
* outcome MS
* complication MS
* complication only Reference(SHINNYDiagnosisProfile)
* complicationDetail MS

// * code from $us-core-procedure-code (preferred)