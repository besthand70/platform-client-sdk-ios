//
// ActionMapEstimateOutcomeCriteria.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ActionMapEstimateOutcomeCriteria: Codable {

    /** ID of outcome. */
    public var outcomeId: String?
    /** Probability value for the selected outcome at or above which the action map will trigger. */
    public var maxProbability: Float?
    /** Additional probability condition, where if set, the action map will trigger if the current outcome probability is lower or equal to the value. */
    public var probability: Float?

    public init(outcomeId: String?, maxProbability: Float?, probability: Float?) {
        self.outcomeId = outcomeId
        self.maxProbability = maxProbability
        self.probability = probability
    }


}

