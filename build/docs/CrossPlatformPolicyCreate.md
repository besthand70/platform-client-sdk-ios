---
title: CrossPlatformPolicyCreate
---
## CrossPlatformPolicyCreate

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **_id** | **String** | The globally unique identifier for the object. | [optional] |
| **name** | **String** | The policy name. | |
| **modifiedDate** | [**Date**](Date.html) | Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z | [optional] |
| **createdDate** | [**Date**](Date.html) | Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z | [optional] |
| **order** | **Int** |  | [optional] |
| **_description** | **String** |  | [optional] |
| **enabled** | **Bool** |  | [optional] |
| **mediaPolicies** | [**CrossPlatformMediaPolicies**](CrossPlatformMediaPolicies.html) | Conditions and actions per media type | [optional] |
| **conditions** | [**PolicyConditions**](PolicyConditions.html) | Conditions | [optional] |
| **actions** | [**CrossPlatformPolicyActions**](CrossPlatformPolicyActions.html) | Actions | [optional] |
| **policyErrors** | [**PolicyErrors**](PolicyErrors.html) |  | [optional] |
| **selfUri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}


