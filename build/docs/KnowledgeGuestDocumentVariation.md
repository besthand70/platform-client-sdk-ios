---
title: KnowledgeGuestDocumentVariation
---
## KnowledgeGuestDocumentVariation

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **_id** | **String** | The globally unique identifier for the variation. | [optional] |
| **body** | [**DocumentBody**](DocumentBody.html) | The content for the variation. | [optional] |
| **dateCreated** | [**Date**](Date.html) | The creation date-time for the document variation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z | [optional] |
| **dateModified** | [**Date**](Date.html) | The last modification date-time for the document variation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z | [optional] |
| **documentVersion** | [**AddressableEntityRef**](AddressableEntityRef.html) | The version of the document. | [optional] |
| **contexts** | [**[KnowledgeGuestDocumentVariationContext]**](KnowledgeGuestDocumentVariationContext.html) | The context values associated with the variation. | |
| **document** | [**AddressableEntityRef**](AddressableEntityRef.html) | The reference to document to which the variation is associated. | [optional] |
| **selfUri** | **String** | The URI for this object | [optional] |
{: class="table table-striped"}


