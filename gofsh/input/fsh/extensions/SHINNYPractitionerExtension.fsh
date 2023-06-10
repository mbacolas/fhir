Extension: SHINNYPractitionerExtension
Id: shinny-practitioner
Title: "SHINNY Practitioner"
Description: "N/A "
* ^version = "0.1.0"
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "SHINNY Practitioner"
* . ^definition = "N/A "
* value[x] only canonical
* value[x] ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Practitioner"