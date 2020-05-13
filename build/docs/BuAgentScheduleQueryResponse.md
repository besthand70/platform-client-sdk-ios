---
title: BuAgentScheduleQueryResponse
---
## BuAgentScheduleQueryResponse

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **user** | [**UserReference**](UserReference.html) | The user to whom this agent schedule applies | [optional] |
| **shifts** | [**[BuAgentScheduleShift]**](BuAgentScheduleShift.html) | The shift definitions for this agent schedule | [optional] |
| **fullDayTimeOffMarkers** | [**[BuFullDayTimeOffMarker]**](BuFullDayTimeOffMarker.html) | Full day time off markers which apply to this agent schedule | [optional] |
| **workPlan** | [**WorkPlanReference**](WorkPlanReference.html) | The work plan for this user | [optional] |
| **metadata** | [**WfmVersionedEntityMetadata**](WfmVersionedEntityMetadata.html) | Versioned entity metadata for this agent schedule | [optional] |
{: class="table table-striped"}

