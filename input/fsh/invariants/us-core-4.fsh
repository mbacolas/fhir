Invariant: us-core-4
Description: "SHOULD use Snomed CT for coded Results"
Severity: #warning
Expression: "valueCodeableConcept.coding.system.empty() or valueCodeableConcept.coding.system = 'http://snomed.info/sct'"
XPath: "not(exists(f:valueCodeableConcept/f:coding/f:system) ) or f:valueCodeableConcept/f:coding/f:system[@value='http://snomed.info/sct']"