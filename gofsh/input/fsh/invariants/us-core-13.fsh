Invariant: us-core-13
Description: "SHALL have a practitioner, an organization, a healthcare service, or a location."
Severity: #error
Expression: "practitioner or organization or healthcareService or location"
XPath: "exists(f:practitioner) or exists(f:organization) or exists(f:healthcareService) or exists(f:location)"