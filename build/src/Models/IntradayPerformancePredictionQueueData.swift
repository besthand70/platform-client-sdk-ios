//
// IntradayPerformancePredictionQueueData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class IntradayPerformancePredictionQueueData: Codable {

    /** Predicted percent of interactions answered in X seconds, where X is the service level objective configured in the service goal group matching this intraday group */
    public var serviceLevelPercent: Double?
    /** Predicted average time in seconds it takes to answer an interaction once the interaction becomes available to be routed */
    public var averageSpeedOfAnswerSeconds: Double?
    /** Predicted number of interactions */
    public var numberOfInteractions: Double?

    public init(serviceLevelPercent: Double?, averageSpeedOfAnswerSeconds: Double?, numberOfInteractions: Double?) {
        
        self.serviceLevelPercent = serviceLevelPercent
        
        self.averageSpeedOfAnswerSeconds = averageSpeedOfAnswerSeconds
        
        self.numberOfInteractions = numberOfInteractions
        
    }


}

