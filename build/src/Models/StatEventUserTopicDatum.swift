//
// StatEventUserTopicDatum.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class StatEventUserTopicDatum: Codable {

    public var interval: String?
    public var metrics: [StatEventUserTopicMetric]?

    public init(interval: String?, metrics: [StatEventUserTopicMetric]?) {
        
        self.interval = interval
        
        self.metrics = metrics
        
    }


}

