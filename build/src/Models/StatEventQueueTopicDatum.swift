//
// StatEventQueueTopicDatum.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class StatEventQueueTopicDatum: Codable {

    public var interval: String?
    public var metrics: [StatEventQueueTopicMetric]?

    public init(interval: String?, metrics: [StatEventQueueTopicMetric]?) {
        
        self.interval = interval
        
        self.metrics = metrics
        
    }


}

