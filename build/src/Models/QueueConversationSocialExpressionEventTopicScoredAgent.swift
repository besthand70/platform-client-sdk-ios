//
// QueueConversationSocialExpressionEventTopicScoredAgent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationSocialExpressionEventTopicScoredAgent: Codable {

    public var agent: QueueConversationSocialExpressionEventTopicUriReference?
    public var score: Int?

    public init(agent: QueueConversationSocialExpressionEventTopicUriReference?, score: Int?) {
        
        self.agent = agent
        
        self.score = score
        
    }


}

