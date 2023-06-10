Profile: USCoreCarePlanProfile
Parent: CarePlan
Id: us-core-careplan
Title: "US Core CarePlan Profile"
Description: "This profile sets minimum expectations for the CarePlan resource to record, search, and fetch assessment and plan of treatment data associated with a patient to promote interoperability and adoption through common implementation.  It identifies which core elements, extensions, vocabularies and value sets **SHALL** be present in the resource when using this profile.  It provides the floor for standards development for specific uses cases."
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
* text 1.. MS
* text.status MS
* text.status from $us-core-narrative-status (required)
* text.status ^binding.description = "Constrained value set of narrative statuses."
* text.div MS
* status MS
* status from RequestStatus (required)
* status ^requirements = "Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record."
* status ^binding.description = "Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record."
* intent MS
* intent from CarePlanIntent (required)
* intent ^binding.description = "Codes indicating the degree of authority/intentionality associated with a care plan"
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "Type of plan."
* category ^requirements = "Identifies what \"kind\" of plan this is to support differentiation between multiple co-existing plans; e.g. \"Home health\", \"psychiatric\", \"asthma\", \"disease management\", \"wellness plan\", etc."
* category contains AssessPlan 1..1 MS
* category[AssessPlan] = $careplan-category#assess-plan
* subject only Reference(USCorePatientProfile)
* subject MS
* subject ^definition = "Who care plan is for."
* subject ^requirements = "Identifies the patient or group whose intended care is described by the plan."