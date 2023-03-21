// WARNING: The following Mapping may be incomplete since the original USCoreCareTeam
// StructureDefinition was missing the mapping entry for argonaut-dq-dstu2.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: argonaut-dq-dstu2-for-USCoreCareTeam
Id: argonaut-dq-dstu2
Source: USCoreCareTeam
* -> "CareTeam"
* status -> "CarePlan.status"
* subject -> "CarePlan.subject"
* participant -> "CarePlan.participant"
* participant.role -> "CarePlan.participant.role"
* participant.member -> "CarePlan.participant.member"