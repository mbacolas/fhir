Invariant: pd-1
Description: "SHALL have contact information or a reference to an Endpoint"
Severity: #error
Expression: "telecom or endpoint"
XPath: "exists(f:telecom) or exists(f:endpoint)"