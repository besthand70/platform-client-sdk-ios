---
title: PatchPredictorRequest
---
## PatchPredictorRequest

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **routingTimeoutSeconds** | **Int** | Number of seconds allocated to predictive routing before attempting a different routing method. This is a value between 12 and 900 seconds. | [optional] |
| **schedule** | [**PredictorSchedule**](PredictorSchedule.html) | The predictor schedule that determines when the predictor is used for routing interactions. | [optional] |
| **workloadBalancingConfig** | [**PredictorWorkloadBalancing**](PredictorWorkloadBalancing.html) | The predictor balancing configuration to enable workload balancing | [optional] |
{: class="table table-striped"}


