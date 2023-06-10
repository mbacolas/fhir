Invariant: us-core-1
Description: "Datetime must be at least to day."
Severity: #error
Expression: "$this is DateTime implies $this.toString().length() >= 10"
XPath: "f:matches(effectiveDateTime,/\\d{4}-[01]\\d-[0-3]\\dT[0-2]\\d:[0-5]\\d([+-][0-2]\\d:[0-5]\\d|Z)/)"