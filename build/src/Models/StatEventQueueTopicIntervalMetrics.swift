//
// StatEventQueueTopicIntervalMetrics.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class StatEventQueueTopicIntervalMetrics: Codable {

    public var interval: String?
    public var metrics: [StatEventQueueTopicMetricStats]?

    public init(interval: String?, metrics: [StatEventQueueTopicMetricStats]?) {
        self.interval = interval
        self.metrics = metrics
    }


}

