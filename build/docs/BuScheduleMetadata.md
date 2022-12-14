---
title: BuScheduleMetadata
---
## BuScheduleMetadata

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **_id** | **String** | The globally unique identifier for the object. | [optional] |
| **weekDate** | [**Date**](Date.html) | The start week date for this schedule. Dates are represented as an ISO-8601 string. For example: yyyy-MM-dd | [optional] |
| **weekCount** | **Int** | The number of weeks spanned by this schedule | [optional] |
| **_description** | **String** | The description of this schedule | [optional] |
| **published** | **Bool** | Whether this schedule is published | [optional] |
| **shortTermForecast** | [**BuShortTermForecastReference**](BuShortTermForecastReference.html) | The forecast used for this schedule, if applicable | [optional] |
| **generationResults** | [**ScheduleGenerationResultSummary**](ScheduleGenerationResultSummary.html) | Generation result summary for this schedule, if applicable | [optional] |
| **metadata** | [**WfmVersionedEntityMetadata**](WfmVersionedEntityMetadata.html) | Version metadata for this schedule | [optional] |
| **managementUnits** | [**[BuManagementUnitScheduleSummary]**](BuManagementUnitScheduleSummary.html) | High level per-management unit schedule metadata | [optional] |
| **selfUri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}


