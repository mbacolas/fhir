Profile: SHINNYDiagnosisProfile
Parent: USCoreConditionEncounterDiagnosisProfile
Id: shin-ny-diagnosis
Title: "SHINNY Diagnosis Profile"
Description: "Detailed information about a diagnosis"
* ^version = "0.1.0"
* category[us-core] from $condition-category (required)
* category[us-core] ^short = "encounter-diagnosis or problem-list-item"
* severity MS
* subject only Reference(SHINNYPatientProfile)
* encounter only Reference(SHINNYEncounterProfile)
* stage MS
* evidence MS