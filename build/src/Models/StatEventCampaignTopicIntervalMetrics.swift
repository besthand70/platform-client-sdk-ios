//
// StatEventCampaignTopicIntervalMetrics.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class StatEventCampaignTopicIntervalMetrics: Codable {

    public var interval: String?
    public var metrics: [StatEventCampaignTopicMetricStats]?

    public init(interval: String?, metrics: [StatEventCampaignTopicMetricStats]?) {
        self.interval = interval
        self.metrics = metrics
    }


}

