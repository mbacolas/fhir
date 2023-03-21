// WARNING: The following Mapping may be incomplete since the original USCoreCarePlanProfile
// StructureDefinition was missing the mapping entry for argonaut-dq-dstu2.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: argonaut-dq-dstu2-for-USCoreCarePlanProfile
Id: argonaut-dq-dstu2
Source: USCoreCarePlanProfile
* -> "CarePlan"
* text -> "CarePlan.text"
* text.status -> "CarePlan.text.status"
* status -> "CarePlan.status"
* intent -> "NA (new element in STU3)"
* category -> "CarePlan.category"
* category[AssessPlan] -> "CarePlan.category"
* subject -> "CarePlan.subject"