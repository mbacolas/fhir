Profile: SHINNYDiagnosisProfile
Parent: USCoreConditionEncounterDiagnosisProfile
Id: shin-ny-diagnosis
Title: "SHINNY Diagnosis Profile"
Description: "Detailed information about a diagnosis"


// * category[us-core] = $condition-category#encounter-diagnosis,problem-list-item
* category[us-core] from $condition-category
* category[us-core] ^short = "encounter-diagnosis or problem-list-item"
