Invariant: us-core-7
Description: "Performed SHALL be present if the status is 'completed' or 'in-progress'"
Severity: #error
Expression: "(status='completed' or status='in-progress') implies performed.exists()"