//
// AnalyticsConversationAsyncQueryResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AnalyticsConversationAsyncQueryResponse: Codable {

    public var conversations: [AnalyticsConversation]?
    /** Optional cursor to indicate where to resume the results */
    public var cursor: String?

    public init(conversations: [AnalyticsConversation]?, cursor: String?) {
        
        self.conversations = conversations
        
        self.cursor = cursor
        
    }


}

