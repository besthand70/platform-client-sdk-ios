//
// ConversationMetrics.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationMetrics: Codable {

    public enum SentimentTrendClass: String, Codable { 
        case notCalculated = "NotCalculated"
        case declining = "Declining"
        case slightlyDeclining = "SlightlyDeclining"
        case noChange = "NoChange"
        case slightlyImproving = "SlightlyImproving"
        case improving = "Improving"
    }
    /** The Conversation Reference */
    public var conversation: AddressableEntityRef?
    /** The Sentiment Score */
    public var sentimentScore: Double?
    /** The Sentiment Trend */
    public var sentimentTrend: Double?
    /** The Sentiment Trend Class */
    public var sentimentTrendClass: SentimentTrendClass?

    public init(conversation: AddressableEntityRef?, sentimentScore: Double?, sentimentTrend: Double?, sentimentTrendClass: SentimentTrendClass?) {
        
        self.conversation = conversation
        
        self.sentimentScore = sentimentScore
        
        self.sentimentTrend = sentimentTrend
        
        self.sentimentTrendClass = sentimentTrendClass
        
    }


}

