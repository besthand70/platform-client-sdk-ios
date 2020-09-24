//
// DevelopmentActivityAggregateParam.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DevelopmentActivityAggregateParam: Codable {

    public enum Metrics: String, Codable { 
        case nactivities = "nActivities"
        case nplannedactivities = "nPlannedActivities"
        case ninprogressactivities = "nInProgressActivities"
        case ncompleteactivities = "nCompleteActivities"
        case noverdueactivities = "nOverdueActivities"
        case ninvalidscheduleactivities = "nInvalidScheduleActivities"
    }
    public enum GroupBy: String, Codable { 
        case attendeeid = "attendeeId"
    }
    /** Specifies the range of due dates to be used for filtering. Milliseconds will be truncated. A maximum of 365 days can be specified in the range. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss */
    public var interval: String?
    /** The list of metrics to be returned. If omitted, all metrics are returned. */
    public var metrics: [Metrics]?
    /** Specifies if the aggregated data is combined into a single set of metrics (groupBy is empty or not specified), or contains an element per attendeeId (groupBy is \&quot;attendeeId\&quot;) */
    public var groupBy: [GroupBy]?
    /** The filter applied to the data. This is ANDed with the interval parameter. */
    public var filter: DevelopmentActivityAggregateQueryRequestFilter?

    public init(interval: String?, metrics: [Metrics]?, groupBy: [GroupBy]?, filter: DevelopmentActivityAggregateQueryRequestFilter?) {
        
        self.interval = interval
        
        self.metrics = metrics
        
        self.groupBy = groupBy
        
        self.filter = filter
        
    }


}

