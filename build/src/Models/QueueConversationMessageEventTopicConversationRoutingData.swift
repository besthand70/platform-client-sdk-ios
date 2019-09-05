//
// QueueConversationMessageEventTopicConversationRoutingData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationMessageEventTopicConversationRoutingData: Codable {

    public var queue: QueueConversationMessageEventTopicUriReference?
    public var language: QueueConversationMessageEventTopicUriReference?
    public var priority: Int?
    public var skills: [QueueConversationMessageEventTopicUriReference]?
    public var scoredAgents: [QueueConversationMessageEventTopicScoredAgent]?

    public init(queue: QueueConversationMessageEventTopicUriReference?, language: QueueConversationMessageEventTopicUriReference?, priority: Int?, skills: [QueueConversationMessageEventTopicUriReference]?, scoredAgents: [QueueConversationMessageEventTopicScoredAgent]?) {
        
        self.queue = queue
        
        self.language = language
        
        self.priority = priority
        
        self.skills = skills
        
        self.scoredAgents = scoredAgents
        
    }


}

