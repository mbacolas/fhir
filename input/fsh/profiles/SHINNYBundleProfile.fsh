Profile: SHINNYBundleProfile
Parent: Bundle
Description: "Contains a collection of resources.  This is an extension of the base FHIR Bundle with some additional restrictions."
* ^status = #draft
* ^experimental = false

* id 0..1
* identifier 0..1
* entry.search 0..0
// * type from http://hl7.org/fhir/ValueSet/bundle-type (required)
* type from SHINNYBundleTypeVS (required)
// * type ^short = "Only type 'message' is supported"
* meta 1..1 MS
* meta only SHINNYMeta
* timestamp 1..1 MS
* total 0..0
* link 0..0

* entry.request.method from SHINNYHTTPVerbsVS (required)
* entry.request.method  ^short = "POST | PUT | DELETE"
* entry.request.ifNoneMatch 0..0
* entry.request.ifMatch 0..0
* entry.request.ifNoneExist 0..0

* entry.response.lastModified 0..0
* entry.response.location 0..0
* entry.response.etag 0..0
* signature 0..0

// Instance: MyExample
// InstanceOf: SHINNYBundle
// Description: "blah"
// * type  = "message"