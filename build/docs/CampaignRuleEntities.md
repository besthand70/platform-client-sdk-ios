---
title: CampaignRuleEntities
---
## CampaignRuleEntities

## Properties

|Name | Type | Description | Notes|
|------------ | ------------- | ------------- | -------------|
| **campaigns** | [**[DomainEntityRef]**](DomainEntityRef.html) | The list of campaigns for a CampaignRule to monitor. Required if the CampaignRule has any conditions that run on a campaign. | [optional] |
| **sequences** | [**[DomainEntityRef]**](DomainEntityRef.html) | The list of sequences for a CampaignRule to monitor. Required if the CampaignRule has any conditions that run on a sequence. | [optional] |
{: class="table table-striped"}


