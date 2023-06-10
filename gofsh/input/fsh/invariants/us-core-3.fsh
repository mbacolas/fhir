Invariant: us-core-3
Description: "SHALL use UCUM for coded quantity units."
Severity: #error
Expression: "valueQuantity.system.empty() or valueQuantity.system = 'http://unitsofmeasure.org'"
XPath: "not(exists(f:valueQuantity/f:system) ) or f:valueQuantity/f:system[@value='http://unitsofmeasure.org']"