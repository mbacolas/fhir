Extension: USCoreEthnicityExtension
Id: us-core-ethnicity
Title: "US Core Ethnicity Extension"
Description: "Concepts classifying the person into a named category of humans sharing common history, traits, geographical origin or nationality.  The ethnicity codes used to represent these concepts are based upon the [CDC ethnicity and Ethnicity Code Set Version 1.0](http://www.cdc.gov/phin/resources/vocabulary/index.html) which includes over 900 concepts for representing race and ethnicity of which 43 reference ethnicity.  The ethnicity concepts are grouped by and pre-mapped to the 2 OMB ethnicity categories: - Hispanic or Latino - Not Hispanic or Latino."
* ^version = "5.0.1"
* ^date = "2019-05-21T00:00:00-04:00"
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
* . 0..1
* . ^short = "US Core ethnicity Extension"
* . ^definition = "Concepts classifying the person into a named category of humans sharing common history, traits, geographical origin or nationality.  The ethnicity codes used to represent these concepts are based upon the [CDC ethnicity and Ethnicity Code Set Version 1.0](http://www.cdc.gov/phin/resources/vocabulary/index.html) which includes over 900 concepts for representing race and ethnicity of which 43 reference ethnicity.  The ethnicity concepts are grouped by and pre-mapped to the 2 OMB ethnicity categories: - Hispanic or Latino - Not Hispanic or Latino."
* extension contains
    ombCategory 0..1 MS and
    detailed 0..* and
    text 1..1 MS
* extension[ombCategory] only Extension
* extension[ombCategory] ^short = "Hispanic or Latino|Not Hispanic or Latino"
* extension[ombCategory] ^definition = "The 2 ethnicity category codes according to the [OMB Standards for Maintaining, Collecting, and Presenting Federal Data on Race and Ethnicity, Statistical Policy Directive No. 15, as revised, October 30, 1997](https://www.govinfo.gov/content/pkg/FR-1997-10-30/pdf/97-28653.pdf)."
* extension[ombCategory].url 1..1
* extension[ombCategory].url only uri
* extension[ombCategory].value[x] 1..1
* extension[ombCategory].value[x] only Coding
* extension[ombCategory].value[x] from $omb-ethnicity-category (required)
* extension[detailed] only Extension
* extension[detailed] ^short = "Extended ethnicity codes"
* extension[detailed] ^definition = "The 41 CDC ethnicity codes that are grouped under one of the 2 OMB ethnicity category codes."
* extension[detailed].url 1..1
* extension[detailed].url only uri
* extension[detailed].value[x] 1..1
* extension[detailed].value[x] only Coding
* extension[detailed].value[x] from $detailed-ethnicity (required)
* extension[text] only Extension
* extension[text] ^short = "ethnicity Text"
* extension[text] ^definition = "Plain text representation of the ethnicity concept(s)."
* extension[text].url 1..1
* extension[text].url only uri
* extension[text].value[x] 1..1
* extension[text].value[x] only string
* url 1..1