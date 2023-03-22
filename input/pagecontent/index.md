# SHIN-NY IG

## Introduction
<!-- ![test](/Users/emmanuel.bacolas/app/SHIN-NY-IG/input/pagecontent/ny-infographic.png)
<img src="./ny-infographic.png"  width="60%" height="30%">
![ background image ]( /Users/emmanuel.bacolas/app/SHIN-NY-IG/input/pagecontent/ny-infographic.png )  -->

The SHIN-NY IG extends from a limited set of US Core resource profiles to take advantage some of their extensions, terminilogy sets and value set bindings while relaxing many of the cardinality rules and contraints to allow for less than ideal data to be able to be transimited over the wire.  

In its current iteration the SHIN-NY IG only has profiles on the resources below (as well as referenced resources).  This list will be extended to cover all resources necessary to support all ADT & ORU to FHIR transformations.

- Bundle
- Encounter
- Patient
- Observation
- Condition
- Procedure

---


## Background

The SHIN-NY Data lake 
add architecture diagram of data lake

## Gaps 

Remaining items to be done:
- [ ] restrict the following terminology sets to only include


## Suggestions

- Add Pracitioner extensions in all resources such as a Encounter and Condition to allow for nested Practitioner resources instead of references.

## Supported REST API Calls
It is exected that a reource id is always provided by the calling application 
Meta.lastUpdated will be required to ensure resource bundles get processed in the appropriate order.

unsported functionality:
- _history 
- _validate
- $meta-*
- diff
- graphql

supported API calls/routes 
'
https://hapi.fhir.org/baseR4/Bundle/123

'
POST, PUT, DELETE Bundle
unsupported API calls (search)

"resourceType": "OperationOutcome",