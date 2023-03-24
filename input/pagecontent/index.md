# SHIN-NY IG

## Introduction
“An implementation guide (IG) is a set of rules about how FHIR resources are used to solve a particular problem, 
with associated documentation to support and clarify the usage”.  It also provides documentation about individual 
resource profiles that can be used by FHIR implementers.  The FHIR profiles, that are contained in an IG, 
provide a way to customize resources by allowing one to create use case specific definitions, constraints and/or 
extensions on base resources.

The SHIN-NY IG extends from a limited set of US Core resource profiles to take advantage some of their extensions, 
terminology sets and value set bindings while relaxing many of the cardinality rules and constraints to allow for less 
than ideal data to be able to be transmitted over the wire.  

In its current iteration the SHIN-NY IG only has profiles on the resources below. 
This list will be extended to cover all resources necessary to support all ADT & ORU to FHIR transformations.

- Bundle
- Encounter
- Patient
- Observation
- Condition
- Procedure

---

## Supported REST API Calls

The data lake Rest API will only support the following HTTP methods and routes:

| Route                                 | HTTP Method | Action                                                       |
|---------------------------------------|-------------|--------------------------------------------------------------|
| http://shinny.org/Bundle/             | POST        | Create a new set of resource                                 |
| http://shinny.org/Bundle/:resource_id | PUT         | Update all existing set of resources contained in the Bundle |
| http://shinny.org/Bundle/:resource_id | DELETE      | DELETE an all existing resources contained in the Bundle     |

The data lake API will *not support* the full set of FHIR routes that are supported by a typical FHIR Server.  
Routes such as the ones below will not be supported:

- _history 
- _validate
- $meta-*
- diff
- graphql

The data lake will not persist any FHIR Bundle resources.  Only the individual FHIR resources contained within the 
Bundle will be persisted.  It is expected that the calling application will always provide a *resource id* 
(FHIR Resource logical id) and that logical id will be used to make any subsequent updates to any FHIR resources.  
It is not expected that a *resource id* is provided in the URI during a POST call by the calling application. 
All *resource ids* in the URI will always be ignored since the Bundle resource is not persisted.   

HTTP method recommendations:
- Always use POST for CREATE operations.
- Always use PUT for UPDATE operations.
- POST is NOT idempotent. If a request is submitted N times the resources contained in it will be created N times 
within the data lake
- The Meta.lastUpdated attribute will be required to ensure FHIR resources get processed in the appropriate order.

If an error occurs during the processing of any HTTP call a FHIR OperationOutcome resource will be returned 
providing detailed information about the outcome of an attempted system operation. 

## High Level Architecture
<!-- ![](/Users/emmanuel.bacolas/app/SHIN-NY-IG/input/pagecontent/data_lake_architecture.png) -->
<!-- *Data Ingest Workflow* -->


<img src="/Users/emmanuel.bacolas/app/SHIN-NY-IG/input/pagecontent/data_lake_architecture.png" width="1200" height="600">

*Data Ingest Workflow* 

[//]: # ()
[//]: # (## Gaps )

[//]: # ()
[//]: # (Remaining items to be done:)

[//]: # (- [ ] restrict the following terminology sets to only include)

[//]: # ()
[//]: # (## Suggestions)

[//]: # ()
[//]: # (- Add Pracitioner extensions in all resources such as a Encounter and Condition to allow for nested Practitioner resources instead of references.)