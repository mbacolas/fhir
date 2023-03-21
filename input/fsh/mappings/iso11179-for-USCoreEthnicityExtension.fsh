// WARNING: The following Mapping may be incomplete since the original USCoreEthnicityExtension
// StructureDefinition was missing the mapping entry for iso11179.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: iso11179-for-USCoreEthnicityExtension
Id: iso11179
Source: USCoreEthnicityExtension
* extension[ombCategory] -> "/ClinicalDocument/recordTarget/patientRole/patient/ethnicGroupCode"
* extension[detailed] -> "/ClinicalDocument/recordTarget/patientRole/patient/sdtc:ethnicGroupCode"