//
// ForecastServiceGoalTemplateResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ForecastServiceGoalTemplateResponse: Codable {

    /** The service level goal for this forecast */
    public var serviceLevel: ForecastServiceLevelResponse?
    /** The average speed of answer goal for this forecast */
    public var averageSpeedOfAnswer: ForecastAverageSpeedOfAnswerResponse?
    /** The abandon rate goal for this forecast */
    public var abandonRate: ForecastAbandonRateResponse?

    public init(serviceLevel: ForecastServiceLevelResponse?, averageSpeedOfAnswer: ForecastAverageSpeedOfAnswerResponse?, abandonRate: ForecastAbandonRateResponse?) {
        
        self.serviceLevel = serviceLevel
        
        self.averageSpeedOfAnswer = averageSpeedOfAnswer
        
        self.abandonRate = abandonRate
        
    }


}
