# SHIN-NY IG

## Introduction
The SHIN-NY IG extends from a limited set of US Core resource profiles to take advantage some of their extensions, terminilogy sets and value set bindings while relaxing many of the cardinality rules and contraints to allow for less than ideal data to be able to be transimited over the wire.  

In its current iteration the SHIN-NY IG only has profiles on the resources below.  This list will be extended to cover all resources necessary to support all ADT & ORU to FHIR transformations.

- Bundle
- Encounter
- Patient
- Observation
- Condition
- Procedure

---

## Supported REST API Calls
It is exected that a resource id is assigned by the by the calling application/FHIR Server which serves as a unique key to identify that resource.

Meta.lastUpdated will be required to ensure resource bundles get processed in the appropriate order.

unsported functionality:
- _history 
- _validate
- $meta-*
- diff
- graphql

supported API calls/routes 
'https://shinny.org/baseR4/Bundle/123'

Supported methods:
- POST
- PUT
- DELETE

"resourceType": "OperationOutcome"

## High Level Architecture
<!-- ![](/Users/emmanuel.bacolas/app/SHIN-NY-IG/input/pagecontent/data_lake_architecture.png) -->
<!-- *Data Ingest Workflow* -->


<img src="/Users/emmanuel.bacolas/app/SHIN-NY-IG/input/pagecontent/data_lake_architecture.png"  width="1200" height="600">
*Data Ingest Workflow* 


## Gaps 

Remaining items to be done:
- [ ] restrict the following terminology sets to only include

## Suggestions

- Add Pracitioner extensions in all resources such as a Encounter and Condition to allow for nested Practitioner resources instead of references.