//
// QueueConversationVideoEventTopicConversationRoutingData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationVideoEventTopicConversationRoutingData: Codable {

    public var queue: QueueConversationVideoEventTopicUriReference?
    public var language: QueueConversationVideoEventTopicUriReference?
    public var priority: Int?
    public var skills: [QueueConversationVideoEventTopicUriReference]?
    public var scoredAgents: [QueueConversationVideoEventTopicScoredAgent]?

    public init(queue: QueueConversationVideoEventTopicUriReference?, language: QueueConversationVideoEventTopicUriReference?, priority: Int?, skills: [QueueConversationVideoEventTopicUriReference]?, scoredAgents: [QueueConversationVideoEventTopicScoredAgent]?) {
        
        self.queue = queue
        
        self.language = language
        
        self.priority = priority
        
        self.skills = skills
        
        self.scoredAgents = scoredAgents
        
    }


}

