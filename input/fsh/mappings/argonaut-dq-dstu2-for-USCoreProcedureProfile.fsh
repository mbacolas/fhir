// WARNING: The following Mapping may be incomplete since the original USCoreProcedureProfile
// StructureDefinition was missing the mapping entry for argonaut-dq-dstu2.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: argonaut-dq-dstu2-for-USCoreProcedureProfile
Id: argonaut-dq-dstu2
Source: USCoreProcedureProfile
* -> "Procedure"
* status -> "Procedure.status"
* code -> "Procedure.code"
* subject -> "Procedure.subject"
* performed[x] -> "Procedure.performed[x]"