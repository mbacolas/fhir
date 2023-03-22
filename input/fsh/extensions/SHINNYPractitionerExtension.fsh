Extension: SHINNYPractitionerExtension
Id: shinny-practitioner
Title: "SHINNY Practitioner"
Description: """ N/A """
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only Canonical(Practitioner)


// * extension contains
//     practitioner 0..1 MS

// * extension[practitioner] only Extension
// * extension[practitioner] ^short = "American Indian or Alaska Native|Asian|Black or African American|Native Hawaiian or Other Pacific Islander|White"
// * extension[practitioner] ^definition = "The 5 race category codes according to the [OMB Standards for Maintaining, Collecting, and Presenting Federal Data on Race and Ethnicity, Statistical Policy Directive No. 15, as revised, October 30, 1997](https://www.govinfo.gov/content/pkg/FR-1997-10-30/pdf/97-28653.pdf)."
// * extension[practitioner].url 1..1
// * extension[practitioner].url only uri
// * extension[practitioner].value[x] 1..1
// * extension[practitioner].value[x] only Coding
// * extension[practitioner].value[x] from USCorePractitionerProfile (required)
// * extension[practitioner].value[x] ^binding.description = "The 5 race category codes according to the [OMB Standards for Maintaining, Collecting, and Presenting Federal Data on Race and Ethnicity, Statistical Policy Directive No. 15, as revised, October 30, 1997](https://www.govinfo.gov/content/pkg/FR-1997-10-30/pdf/97-28653.pdf)."