//
// GamificationScorecardChangeTopicPerformanceMetric.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class GamificationScorecardChangeTopicPerformanceMetric: Codable {

    public var metric: GamificationScorecardChangeTopicMetric?
    public var points: Int?
    public var value: Double?
    public var punctualityEvents: [GamificationScorecardChangeTopicPunctualityEvent]?

    public init(metric: GamificationScorecardChangeTopicMetric?, points: Int?, value: Double?, punctualityEvents: [GamificationScorecardChangeTopicPunctualityEvent]?) {
        self.metric = metric
        self.points = points
        self.value = value
        self.punctualityEvents = punctualityEvents
    }


}

