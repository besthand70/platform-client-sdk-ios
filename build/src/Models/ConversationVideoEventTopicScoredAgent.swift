//
// ConversationVideoEventTopicScoredAgent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationVideoEventTopicScoredAgent: Codable {

    /** A UriReference for a resource */
    public var agent: ConversationVideoEventTopicUriReference?
    /** Agent&#39;s score for the current conversation, from 0 - 100, higher being better */
    public var score: Int?

    public init(agent: ConversationVideoEventTopicUriReference?, score: Int?) {
        
        self.agent = agent
        
        self.score = score
        
    }


}

