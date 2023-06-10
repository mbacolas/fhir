ValueSet: UspsTwoLetterAlphabeticCodes
Id: us-core-usps-state
Title: "USPS Two Letter Alphabetic Codes"
Description: "This value set defines two letter USPS alphabetic codes."
* ^status = #active
* ^version = "5.0.1"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.3.40"
* ^date = "2019-05-21"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "On July 1, 1963, the Post Office Department implemented the five-digit ZIP Code, which was placed after the state name in the last line of an address. To provide room for the ZIP Code, the Department issued two-letter abbreviations for all states and territories. Publication 59, Abbreviations for Use with ZIP Code, issued by the Department in October 1963. There is no copyright restriction on this value set."
* include codes from system $usps