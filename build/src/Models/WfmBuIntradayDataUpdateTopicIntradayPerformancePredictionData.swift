//
// WfmBuIntradayDataUpdateTopicIntradayPerformancePredictionData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmBuIntradayDataUpdateTopicIntradayPerformancePredictionData: Codable {

    public var serviceLevelPercent: Double?
    public var averageSpeedOfAnswerSeconds: Double?
    public var occupancyPercent: Double?

    public init(serviceLevelPercent: Double?, averageSpeedOfAnswerSeconds: Double?, occupancyPercent: Double?) {
        self.serviceLevelPercent = serviceLevelPercent
        self.averageSpeedOfAnswerSeconds = averageSpeedOfAnswerSeconds
        self.occupancyPercent = occupancyPercent
    }


}

