//
// StatEventUserTopicMetricStats.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class StatEventUserTopicMetricStats: Codable {

    public var metric: String?
    public var qualifier: String?
    public var stats: [String:Double]?

    public init(metric: String?, qualifier: String?, stats: [String:Double]?) {
        self.metric = metric
        self.qualifier = qualifier
        self.stats = stats
    }


}

