Profile: USCorePatientProfile
Parent: Patient
Id: us-core-patient
Title: "US Core Patient Profile"
Description: "The US Core Patient Profile meets the U.S. Core Data for Interoperability (USCDI) v3 'Patient Demographics' requirements. This profile sets minimum expectations for the Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies, and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific use cases."
* ^version = "6.0.0-preview"
* ^experimental = false
* ^date = "2022-09-30"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* extension contains
    USCoreRaceExtension named race 0..1 and
    USCoreEthnicityExtension named ethnicity 0..1 and
    USCoreTribalAffiliationExtension named tribalAffiliation 0..* and
    USCoreBirthSexExtension named birthsex 0..1 and
    USCoreSexForClinicalUse named sex-for-clinical-use 0..* and
    USCoreGenderIdentityExtension named genderIdentity 0..*
* extension[race] ^mustSupport = false
* extension[ethnicity] ^mustSupport = false
* extension[tribalAffiliation] ^mustSupport = false
* extension[birthsex] ^mustSupport = false
* extension[sex-for-clinical-use] ^mustSupport = false
* extension[genderIdentity] ^mustSupport = false
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier.value ^short = "The value that is unique within the system."
* name 0.. MS
* name ^constraint[1].key = "us-core-6"
* name ^constraint[=].severity = #error
* name ^constraint[=].human = "At least name.given and/or name.family are present or, if neither is available, the Data Absent Reason Extension is present."
* name ^constraint[=].expression = "(family.exists() or given.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
* name ^constraint[=].xpath = "(/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason' and not(/f:family or /f:given)) or (not(/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason') and (/f:family or /f:given))"
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