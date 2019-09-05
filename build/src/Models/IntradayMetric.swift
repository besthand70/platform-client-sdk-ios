//
// IntradayMetric.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class IntradayMetric: Codable {

    public enum Category: String, Codable { 
        case forecastData = "ForecastData"
        case scheduleData = "ScheduleData"
        case historicalQueueData = "HistoricalQueueData"
        case historicalAgentData = "HistoricalAgentData"
        case performancePredictionQueueData = "PerformancePredictionQueueData"
        case performancePredictionAgentData = "PerformancePredictionAgentData"
    }
    /** The metric category */
    public var category: Category?
    /** The current version id for this metric category */
    public var version: String?

    public init(category: Category?, version: String?) {
        
        self.category = category
        
        self.version = version
        
    }


}

