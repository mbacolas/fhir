Profile: SHINNYBundleProfile
Parent: Bundle
Id: SHINNYBundleProfile
Description: "Contains a collection of resources.  This is an extension of the base FHIR Bundle with some additional restrictions."
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* meta 1.. MS
* meta only SHINNYMeta
* type from SHINNYBundleTypeVS (required)
* timestamp 1.. MS
* total ..0
* link ..0
* entry.search ..0
* entry.request.method from SHINNYHTTPVerbsVS (required)
* entry.request.method ^short = "POST | PUT | DELETE"
* entry.request.ifNoneMatch ..0
* entry.request.ifMatch ..0
* entry.request.ifNoneExist ..0
* entry.response.location ..0
* entry.response.etag ..0
* entry.response.lastModified ..0
* signature ..0