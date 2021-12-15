//
// QueueConversationSocialExpressionEventTopicConversationRoutingData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Information on how a communication should be routed to an agent. */

public class QueueConversationSocialExpressionEventTopicConversationRoutingData: Codable {

    public var queue: QueueConversationSocialExpressionEventTopicUriReference?
    /** A UriReference for a resource */
    public var language: QueueConversationSocialExpressionEventTopicUriReference?
    /** The priority of the conversation to use for routing decisions */
    public var priority: Int?
    /** The skills to use for routing decisions */
    public var skills: [QueueConversationSocialExpressionEventTopicUriReference]?
    /** A collection of agents and their assigned scores for this conversation (0 - 100, higher being better), for use in routing to preferred agents */
    public var scoredAgents: [QueueConversationSocialExpressionEventTopicScoredAgent]?

    public init(queue: QueueConversationSocialExpressionEventTopicUriReference?, language: QueueConversationSocialExpressionEventTopicUriReference?, priority: Int?, skills: [QueueConversationSocialExpressionEventTopicUriReference]?, scoredAgents: [QueueConversationSocialExpressionEventTopicScoredAgent]?) {
        
        self.queue = queue
        
        self.language = language
        
        self.priority = priority
        
        self.skills = skills
        
        self.scoredAgents = scoredAgents
        
    }


}

