Profile: SHINNYDiagnosisProfile
Parent: USCoreConditionEncounterDiagnosisProfile
Id: shin-ny-diagnosis
Title: "SHINNY Diagnosis Profile"
Description: "Detailed information about a diagnosis"

* meta 1..1 MS
* meta only SHINNYMeta
* category[us-core] from $condition-category
* category[us-core] ^short = "encounter-diagnosis or problem-list-item"
* subject only Reference(SHINNYPatientProfile)
* encounter only Reference(SHINNYEncounterProfile)
* stage MS
* evidence MS
* severity MS