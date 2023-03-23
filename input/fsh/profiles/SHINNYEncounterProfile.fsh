Profile: SHINNYEncounterProfile
Parent: USCoreEncounterProfile
Id: shin-ny-encounter
Title: "SHINNY Encounter Profile"
Description: "An interaction during which services are provided to the patient.  This is an extension of the base resource with some additional attribution."

* extension contains
    SHINNYPractitionerExtension named practitioner 0..1

* extension[practitioner] ^mustSupport = false

