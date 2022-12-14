//
// ConversationEmailEventTopicConversationRoutingData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationEmailEventTopicConversationRoutingData: Codable {

    /** A UriReference for a resource */
    public var queue: ConversationEmailEventTopicUriReference?
    /** A UriReference for a resource */
    public var language: ConversationEmailEventTopicUriReference?
    /** The priority of the conversation to use for routing decisions */
    public var priority: Int?
    /** The skills to use for routing decisions */
    public var skills: [ConversationEmailEventTopicUriReference]?
    /** A collection of agents and their assigned scores for this conversation (0 - 100, higher being better), for use in routing to preferred agents */
    public var scoredAgents: [ConversationEmailEventTopicScoredAgent]?

    public init(queue: ConversationEmailEventTopicUriReference?, language: ConversationEmailEventTopicUriReference?, priority: Int?, skills: [ConversationEmailEventTopicUriReference]?, scoredAgents: [ConversationEmailEventTopicScoredAgent]?) {
        self.queue = queue
        self.language = language
        self.priority = priority
        self.skills = skills
        self.scoredAgents = scoredAgents
    }


}

