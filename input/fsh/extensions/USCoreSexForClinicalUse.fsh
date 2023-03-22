Extension: USCoreSexForClinicalUse
Id: us-core-sex-for-clinical-use
Title: "US Core Sex For Clinical Use"
Description: "This extension aligns with FHIR R5 [sexForClinicalUse extension](http://hl7.org/fhir/2022Sep/extension-patient-sexforclinicaluse.html) from which the following description is excerpted, \"Sex for Clinical Use is a categorization of sex derived from observable information such as an organ inventory, recent hormone lab tests, genetic testing, menstrual status, obstetric history, etc. This property is intended for use in clinical decision making and indicates that treatment or diagnostic tests should consider best practices associated with the relevant reference population  It describes the biological sex of an organism, which is most commonly determined based on anatomy and physiology or genetic (chromosome) analysis.  It also optionally communicates the date when the sex was determined.\" See the referenced extension for more information."
* ^version = "6.0.0-preview"
* ^date = "2022-10-07"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "A context-specific sex for clinical use"
* . ^definition = "A context-specific categorization of a patient's sex for the purpose of clinical use"
* . ^min = 0
* extension contains
    value 1..1 and
    period 0..1
* extension[value] only Extension
* extension[value] ^short = "A context-specific sex for clinical use"
* extension[value] ^definition = "A context-specific categorization of a patient's sex for the purpose of clinical use"
* extension[value] ^comment = "Sex for clinical use may be contexual. For example, the sex for clinical use for mammogram health maintenance may by different than the sex for clinical use for the purpose of selecting a reference range for a lab test.  There may also be a patient-context sex for clinical use that is a general categorization that would apply across all contexts if more specific information is not available."
* extension[value].url only uri
* extension[value].value[x] 1..
* extension[value].value[x] only CodeableConcept
* extension[value].value[x] from $us-core-sex-for-clinical-use (required)
* extension[value].value[x] ^binding.description = "Sex for Clinical Use"
* extension[period] only Extension
* extension[period] ^short = "When the sex for clinical use applies"
* extension[period] ^definition = "The time period during which the sex for clinical use applies to the patient"
* extension[period].url only uri
* extension[period].value[x] 1..
* extension[period].value[x] only Period