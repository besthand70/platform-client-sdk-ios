//
// ConversationEmailEventTopicConversationRoutingData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationEmailEventTopicConversationRoutingData: Codable {

    public var queue: ConversationEmailEventTopicUriReference?
    public var language: ConversationEmailEventTopicUriReference?
    public var priority: Int?
    public var skills: [ConversationEmailEventTopicUriReference]?
    public var scoredAgents: [ConversationEmailEventTopicScoredAgent]?

    public init(queue: ConversationEmailEventTopicUriReference?, language: ConversationEmailEventTopicUriReference?, priority: Int?, skills: [ConversationEmailEventTopicUriReference]?, scoredAgents: [ConversationEmailEventTopicScoredAgent]?) {
        
        self.queue = queue
        
        self.language = language
        
        self.priority = priority
        
        self.skills = skills
        
        self.scoredAgents = scoredAgents
        
    }


}

