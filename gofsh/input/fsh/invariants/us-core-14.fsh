Invariant: us-core-14
Description: "Either a name or a relationship SHALL be provided (or both)"
Severity: #error
Expression: "name.exists() or relationship.exists()"