Profile: SHINNYProcedureProfile
Parent: USCoreProcedureProfile
Id: shin-ny-procedure
Title: "SHINNY Procedure Profile"
Description: "An action that is being or was performed on a patient"
* ^version = "0.1.0"
* language MS
* basedOn MS
* partOf only Reference(SHINNYProcedureProfile or SHINNYObservationProfile)
* partOf MS
* subject only Reference(SHINNYPatientProfile)
* performer MS
* performer.actor only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile)
* location MS
* reasonCode MS
* reasonReference only Reference(SHINNYDiagnosisProfile or SHINNYProcedureProfile or SHINNYObservationProfile)
* reasonReference MS
* bodySite MS
* outcome MS
* complication MS
* complicationDetail only Reference(SHINNYDiagnosisProfile)
* complicationDetail MS