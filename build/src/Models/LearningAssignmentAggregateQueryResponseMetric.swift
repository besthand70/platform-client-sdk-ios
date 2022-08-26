//
// LearningAssignmentAggregateQueryResponseMetric.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class LearningAssignmentAggregateQueryResponseMetric: Codable {

    public enum Metric: String, Codable { 
        case nactivities = "nActivities"
        case nplannedactivities = "nPlannedActivities"
        case ninprogressactivities = "nInProgressActivities"
        case ncompleteactivities = "nCompleteActivities"
        case noverdueactivities = "nOverdueActivities"
        case ninvalidscheduleactivities = "nInvalidScheduleActivities"
        case npassedactivities = "nPassedActivities"
        case nfailedactivities = "nFailedActivities"
        case oactivityscore = "oActivityScore"
        case nnotcompletedactivities = "nNotCompletedActivities"
    }
    /** The metric this applies to */
    public var metric: Metric?
    /** The aggregated values for this metric */
    public var stats: LearningAssignmentAggregateQueryResponseStats?

    public init(metric: Metric?, stats: LearningAssignmentAggregateQueryResponseStats?) {
        self.metric = metric
        self.stats = stats
    }


}

