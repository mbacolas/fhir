Extension: USCoreRaceExtension
Id: us-core-race
Title: "US Core Race Extension"
Description: """Concepts classifying the person into a named category of humans sharing common history, traits, geographical origin or nationality.  The race codes used to represent these concepts are based upon the [CDC Race and Ethnicity Code Set Version 1.0](http://www.cdc.gov/phin/resources/vocabulary/index.html) which includes over 900 concepts for representing race and ethnicity of which 921 reference race.  The race concepts are grouped by and pre-mapped to the 5 OMB race categories:

 - American Indian or Alaska Native
 - Asian
 - Black or African American
 - Native Hawaiian or Other Pacific Islander
 - White."""
* ^version = "5.0.1"
* ^date = "2019-05-21"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^purpose = "Complies with 2015 Edition Common Clinical Data Set for patient race."
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* ^context[0].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"
* ^context[+].type = #element
* ^context[=].expression = "Person"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "FamilyMemberHistory"
* . ..1
* . ^short = "US Core Race Extension"
* . ^definition = "Concepts classifying the person into a named category of humans sharing common history, traits, geographical origin or nationality.  The race codes used to represent these concepts are based upon the [CDC Race and Ethnicity Code Set Version 1.0](http://www.cdc.gov/phin/resources/vocabulary/index.html) which includes over 900 concepts for representing race and ethnicity of which 921 reference race.  The race concepts are grouped by and pre-mapped to the 5 OMB race categories:\n\n   - American Indian or Alaska Native\n   - Asian\n   - Black or African American\n   - Native Hawaiian or Other Pacific Islander\n   - White."
* extension contains
    ombCategory 0..5 MS and
    detailed 0..* and
    text 1..1 MS
* extension[ombCategory] ^short = "American Indian or Alaska Native|Asian|Black or African American|Native Hawaiian or Other Pacific Islander|White"
* extension[ombCategory] ^definition = "The 5 race category codes according to the [OMB Standards for Maintaining, Collecting, and Presenting Federal Data on Race and Ethnicity, Statistical Policy Directive No. 15, as revised, October 30, 1997](https://www.govinfo.gov/content/pkg/FR-1997-10-30/pdf/97-28653.pdf)."
* extension[ombCategory].value[x] 1..
* extension[ombCategory].value[x] only Coding
* extension[ombCategory].value[x] from OmbRaceCategories (required)
* extension[ombCategory].value[x] ^binding.description = "The 5 race category codes according to the [OMB Standards for Maintaining, Collecting, and Presenting Federal Data on Race and Ethnicity, Statistical Policy Directive No. 15, as revised, October 30, 1997](https://www.govinfo.gov/content/pkg/FR-1997-10-30/pdf/97-28653.pdf)."
* extension[detailed] ^short = "Extended race codes"
* extension[detailed] ^definition = "The 900+ CDC race codes that are grouped under one of the 5 OMB race category codes:."
* extension[detailed].value[x] 1..
* extension[detailed].value[x] only Coding
* extension[detailed].value[x] from DetailedRace (required)
* extension[text] ^short = "Race Text"
* extension[text] ^definition = "Plain text representation of the race concept(s)."
* extension[text].value[x] 1..
* extension[text].value[x] only string