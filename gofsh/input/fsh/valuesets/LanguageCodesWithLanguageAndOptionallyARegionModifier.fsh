ValueSet: LanguageCodesWithLanguageAndOptionallyARegionModifier
Id: simple-language
Title: "Language codes with language and optionally a region modifier"
Description: "This value set includes codes from [BCP-47](http://tools.ietf.org/html/bcp47). This value set matches the ONC 2015 Edition LanguageCommunication data element value set within C-CDA to use a 2 character language code if one exists,   and a 3 character code if a 2 character code does not exist. It points back to [RFC 5646](https://tools.ietf.org/html/rfc5646), however only the language codes are required, all other elements are optional."
* ^status = #active
* ^version = "5.0.1"
* ^date = "2019-05-21"
* ^publisher = "HL7 International - Cross-Group Projects"
* ^contact.name = "HL7 International - Cross-Group Projects"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.hl7.org/Special/committees/cgp"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "cgp@lists.HL7.org"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^copyright = "ISO Maintains the copyright on the country codes and controls it's use carefully. For further details, see the [ISO 3166 Home Page](http://www.iso.org/iso/country_codes.htm)"
* include codes from system urn:ietf:bcp:47
    where ext-lang exists false and
    script exists false and
    variant exists false and
    extension exists false and
    private-use exists false