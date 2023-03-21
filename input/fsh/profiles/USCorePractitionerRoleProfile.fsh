Profile: USCorePractitionerRoleProfile
Parent: PractitionerRole
Id: us-core-practitionerrole
Title: "US Core PractitionerRole Profile"
Description: "This profile sets minimum expectations for the PractitionerRole Resource to record, search, and fetch the practitioner role for a practitioner to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases.  The requirements for the US Core Practitioner were drawn from the [Argonaut Provider Directory](http://www.fhir.org/guides/argonaut/pd//release1/index.html), [IHE Healthcare Provider Directory](http://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_HPD.pdf) and the [ONC Provider Directory Workshop](https://confluence.oncprojectracking.org/display/PDW/Workshop+Documents)."
* ^version = "5.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2022-04-20"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* obeys pd-1 and us-core-13
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* practitioner only Reference(USCorePractitionerProfile)
* practitioner MS
* practitioner ^condition = "us-core-13"
* organization only Reference(USCoreOrganizationProfile)
* organization MS
* organization ^condition = "us-core-13"
* code MS
* code from $us-core-provider-role (extensible)
* code ^binding.description = "Provider role codes consisting of NUCC Health Care Provider Taxonomy Code Set for providers."
* specialty MS
* specialty from $2.16.840.1.114222.4.11.1066 (extensible)
* location MS
* location ^condition = "us-core-13"
* healthcareService ^condition = "us-core-13"
* telecom MS
* telecom ^condition = "pd-1"
* telecom.system 1..1 MS
* telecom.system only code
* telecom.value 1..1 MS
* telecom.value only string
* endpoint MS
* endpoint ^condition = "pd-1"