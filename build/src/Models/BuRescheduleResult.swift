//
// BuRescheduleResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BuRescheduleResult: Codable {

    /** The generation results.  Note the result will always be delivered via the generationResultsDownloadUrl; however the schema is included for documentation */
    public var generationResults: ScheduleGenerationResult?
    /** The download URL from which to fetch the generation results for the rescheduling run */
    public var generationResultsDownloadUrl: String?
    /** The headcount forecast.  Note the result will always be delivered via the headcountForecastDownloadUrl; however the schema is included for documentation */
    public var headcountForecast: BuHeadcountForecast?
    /** The download URL from which to fetch the headcount forecast for the rescheduling run */
    public var headcountForecastDownloadUrl: String?
    /** List of download links for agent schedules produced by the rescheduling run */
    public var agentSchedules: [BuRescheduleAgentScheduleResult]?

    public init(generationResults: ScheduleGenerationResult?, generationResultsDownloadUrl: String?, headcountForecast: BuHeadcountForecast?, headcountForecastDownloadUrl: String?, agentSchedules: [BuRescheduleAgentScheduleResult]?) {
        self.generationResults = generationResults
        self.generationResultsDownloadUrl = generationResultsDownloadUrl
        self.headcountForecast = headcountForecast
        self.headcountForecastDownloadUrl = headcountForecastDownloadUrl
        self.agentSchedules = agentSchedules
    }


}

