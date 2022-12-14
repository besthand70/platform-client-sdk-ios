//
// WorkdayMetric.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WorkdayMetric: Codable {

    /** Gamification metric */
    public var metric: Metric?
    /** Current objective for this metric */
    public var objective: Objective?
    /** Gamification points earned for this metric */
    public var points: Int?
    /** Value of this metric */
    public var value: Double?
    /** List of schedule activity events for punctuality metrics */
    public var punctualityEvents: [PunctualityEvent]?

    public init(metric: Metric?, objective: Objective?, points: Int?, value: Double?, punctualityEvents: [PunctualityEvent]?) {
        self.metric = metric
        self.objective = objective
        self.points = points
        self.value = value
        self.punctualityEvents = punctualityEvents
    }


}

