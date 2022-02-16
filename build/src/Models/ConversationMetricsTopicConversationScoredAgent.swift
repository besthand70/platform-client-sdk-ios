//
// ConversationMetricsTopicConversationScoredAgent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationMetricsTopicConversationScoredAgent: Codable {

    /** Assigned agent score for this conversation (0 - 100, higher being better) */
    public var agentScore: Int?
    /** Unique identifier for the agent that was scored for this conversation */
    public var scoredAgentId: String?

    public init(agentScore: Int?, scoredAgentId: String?) {
        
        self.agentScore = agentScore
        
        self.scoredAgentId = scoredAgentId
        
    }


}

