Profile: SHINNYBundleProfile
Parent: Bundle
Description: "Contains a collection of resources.  This is an extension of the base FHIR Bundle with some additional restrictions."
* ^status = #draft
* ^experimental = false

* id 1..1 MS
* identifier 0..1 MS
* entry.search 0..0
// * type from http://hl7.org/fhir/ValueSet/bundle-type (required)
* type from SHINNYBundleTypeVS (required)
* type ^short = "Only type 'message' is supported"
* meta 1..1 MS
* meta only SHINNYMeta
* timestamp 1..1 MS
* total 0..0

// Instance: MyExample
// InstanceOf: SHINNYBundle
// Description: "blah"
// * type  = "message"