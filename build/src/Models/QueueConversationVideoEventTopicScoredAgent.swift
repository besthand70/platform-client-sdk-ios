//
// QueueConversationVideoEventTopicScoredAgent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationVideoEventTopicScoredAgent: Codable {

    public var agent: QueueConversationVideoEventTopicUriReference?
    public var score: Int?

    public init(agent: QueueConversationVideoEventTopicUriReference?, score: Int?) {
        
        self.agent = agent
        
        self.score = score
        
    }


}

