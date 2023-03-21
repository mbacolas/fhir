Profile: SHINNYBundle
Parent: Bundle
Description: "An example profile of the Bundle resource."
* identifier 0..1 MS
* entry.search 0..0
* type from http://hl7.org/fhir/ValueSet/bundle-type (required)
* meta 1..1 MS
* meta only SHINNYMeta

// Instance: MyExample
// InstanceOf: SHINNYBundle
// Description: "blah"
// * type  = "message"