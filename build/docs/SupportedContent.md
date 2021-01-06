---
title: SupportedContent
---
## SupportedContent
Supported content for inbound and outbound messages

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **mediaTypes** | [**MediaTypes**](MediaTypes.html) | Defines the allowable media that may be accepted for an inbound message or to be sent in an outbound message. The following is an example of allowing all inbound media, and for outbound all images and only mpeg video: {   \&quot;mediaTypes\&quot;: {     \&quot;allow\&quot;: {       \&quot;inbound\&quot;: [{\&quot;type\&quot;: \&quot;*/*\&quot;}],       \&quot;outbound\&quot;: [{\&quot;type\&quot;: \&quot;image/*\&quot;}, {\&quot;type\&quot;: \&quot;video/mpeg\&quot;}]     }   } } | [optional] |
{: class="table table-striped"}

