Profile: USCoreCareTeam
Parent: CareTeam
Id: us-core-careteam
Title: "US Core CareTeam Profile"
Description: "This profile sets minimum expectations for the CareTeam resource for identifying the Care Team members associated with a patient to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases."
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
* . ^definition = "\\-"
* . ^comment = "\\-"
* . ^mustSupport = false
* status MS
* status from CareTeamStatus (required)
* status ^binding.description = "Indicates whether the team is current , represents future intentions or is now a historical record."
* subject 1.. MS
* subject only Reference(USCorePatientProfile)
* participant 1.. MS
* participant.role 1..1 MS
* participant.role from $2.16.840.1.113762.1.4.1099.30 (extensible)
* participant.role ^binding.description = "Indicates specific responsibility of an individual within the care team, such as Primary physician, Team coordinator, Caregiver, etc."
* participant.member 1.. MS
* participant.member only Reference(USCorePractitionerProfile or USCoreOrganizationProfile or USCorePatientProfile or USCorePractitionerRoleProfile or USCoreCareTeam or USCoreRelatedPersonProfile)