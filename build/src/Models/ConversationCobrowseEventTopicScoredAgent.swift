//
// ConversationCobrowseEventTopicScoredAgent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationCobrowseEventTopicScoredAgent: Codable {

    /** A UriReference for a resource */
    public var agent: ConversationCobrowseEventTopicUriReference?
    /** Agent&#39;s score for the current conversation, from 0 - 100, higher being better */
    public var score: Int?

    public init(agent: ConversationCobrowseEventTopicUriReference?, score: Int?) {
        
        self.agent = agent
        
        self.score = score
        
    }


}

