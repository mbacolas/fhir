Profile: SHINNYPatientProfile
Parent: Patient
Id: shinny-patient
Title: "SHINNY Patient Profile"
Description: "Description"
* ^url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* ^version = "5.0.1"
* ^experimental = false
* ^date = "2022-04-20T15:02:49-07:00"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
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
* name 1.. MS
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
* gender 1.. MS
* gender only code
* gender from AdministrativeGender (required)
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