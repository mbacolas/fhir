// WARNING: The following Mapping may be incomplete since the original USCoreRaceExtension
// StructureDefinition was missing the mapping entry for iso11179.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: iso11179-for-USCoreRaceExtension
Id: iso11179
Source: USCoreRaceExtension
* extension[ombCategory] -> "/ClinicalDocument/recordTarget/patientRole/patient/raceCode"
* extension[detailed] -> "/ClinicalDocument/recordTarget/patientRole/patient/sdtc:raceCode"