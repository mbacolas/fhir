Invariant: us-core-6
Description: "DocumentReference.content.attachment.url or DocumentReference.content.attachment.data or both SHALL be present."
Severity: #error
Expression: "url.exists() or data.exists()"
XPath: "f:url or f:content"