Profile: SHINNYPatientProfileTest
Parent: Patient
Id: shinny-patient-test
Title: "SHINNY Patient Profile Test"
Description: "Description"
// * ^url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* ^version = "5.0.1"
* ^experimental = false
* ^date = "2023-03-01"
* ^publisher = ""
* ^contact.name = ""
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = ""
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = ""
// * ^jurisdiction = urn:iso:std:iso:3166#US
// * obeys us-core-6
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* extension contains
    USCoreRaceExtension named race 0..1 and
    USCoreEthnicityExtension named ethnicity 0..1 and
    USCoreBirthSexExtension named birthsex 0..1 and
    USCoreGenderIdentityExtension named genderIdentity 0..1
* extension[race] ^mustSupport = false
* extension[ethnicity] ^mustSupport = false
* extension[birthsex] ^mustSupport = false
* extension[genderIdentity] ^mustSupport = false
* id 1.. MS
// * id ^short = "blah"
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier.value ^short = "The value that is unique within the system."
* name 0.. MS
* name.family MS
* name.family ^condition = "us-core-6"
* name.given MS
* name.given ^condition = "us-core-6"
* name.suffix ^mustSupport = false
* name.period ^mustSupport = false
* telecom ^mustSupport = false
* telecom.system 1.. MS
* telecom.system from ContactPointSystem (required)
* telecom.system ^binding.description = "Telecommunications form for contact point."
* telecom.value 1.. MS
* telecom.use MS
* telecom.use from ContactPointUse (required)
* gender 0.. MS
* gender only code
// * gender from AdministrativeGender (preferred)
* birthDate MS
* address MS
* address.line MS
* address.city MS
* address.state MS
* address.state from UspsTwoLetterAlphabeticCodes (extensible)
* address.state ^binding.description = "Two Letter USPS alphabetic codes."
* address.postalCode MS
* address.postalCode ^short = "US Zip Codes"
* address.postalCode ^alias = "Zip Code"
* address.period MS
* communication ^mustSupport = false
* communication.language MS
* communication.language from LanguageCodesWithLanguageAndOptionallyARegionModifier (extensible)

// Instance: PatientExample
// InstanceOf: SHINNYPatientProfile
// Description: "An example of a patient with a license to krill."
// * name
//   * given[0] = "James"
//   * family = "Pond"