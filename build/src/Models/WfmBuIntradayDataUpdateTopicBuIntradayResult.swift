//
// WfmBuIntradayDataUpdateTopicBuIntradayResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmBuIntradayDataUpdateTopicBuIntradayResult: Codable {

    public enum Categories: String, Codable { 
        case forecastData = "ForecastData"
        case scheduleData = "ScheduleData"
        case performancePredictionData = "PerformancePredictionData"
    }
    public var startDate: Date?
    public var endDate: Date?
    public var intervalLengthMinutes: Int?
    public var intradayDataGroupings: [WfmBuIntradayDataUpdateTopicBuIntradayDataGroup]?
    public var categories: [Categories]?
    public var noDataReason: String?
    public var schedule: WfmBuIntradayDataUpdateTopicBuScheduleReference?
    public var shortTermForecast: WfmBuIntradayDataUpdateTopicBuShortTermForecastReference?

    public init(startDate: Date?, endDate: Date?, intervalLengthMinutes: Int?, intradayDataGroupings: [WfmBuIntradayDataUpdateTopicBuIntradayDataGroup]?, categories: [Categories]?, noDataReason: String?, schedule: WfmBuIntradayDataUpdateTopicBuScheduleReference?, shortTermForecast: WfmBuIntradayDataUpdateTopicBuShortTermForecastReference?) {
        
        self.startDate = startDate
        
        self.endDate = endDate
        
        self.intervalLengthMinutes = intervalLengthMinutes
        
        self.intradayDataGroupings = intradayDataGroupings
        
        self.categories = categories
        
        self.noDataReason = noDataReason
        
        self.schedule = schedule
        
        self.shortTermForecast = shortTermForecast
        
    }


}

