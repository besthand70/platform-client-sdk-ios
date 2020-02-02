//
// AnalyticsConversation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AnalyticsConversation: Codable {

    public enum OriginatingDirection: String, Codable { 
        case inbound = "inbound"
        case outbound = "outbound"
    }
    /** Unique identifier for the conversation */
    public var conversationId: String?
    /** Date/time the conversation started. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var conversationStart: Date?
    /** Date/time the conversation ended. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var conversationEnd: Date?
    /** The lowest estimated average MOS among all the audio streams belonging to this conversation */
    public var mediaStatsMinConversationMos: Double?
    /** The lowest R-factor value among all of the audio streams belonging to this conversation */
    public var mediaStatsMinConversationRFactor: Double?
    /** The original direction of the conversation */
    public var originatingDirection: OriginatingDirection?
    /** Evaluations tied to this conversation */
    public var evaluations: [AnalyticsEvaluation]?
    /** Surveys tied to this conversation */
    public var surveys: [AnalyticsSurvey]?
    /** Identifiers of divisions associated with this conversation */
    public var divisionIds: [String]?
    /** Participants in the conversation */
    public var participants: [AnalyticsParticipant]?

    public init(conversationId: String?, conversationStart: Date?, conversationEnd: Date?, mediaStatsMinConversationMos: Double?, mediaStatsMinConversationRFactor: Double?, originatingDirection: OriginatingDirection?, evaluations: [AnalyticsEvaluation]?, surveys: [AnalyticsSurvey]?, divisionIds: [String]?, participants: [AnalyticsParticipant]?) {
        
        self.conversationId = conversationId
        
        self.conversationStart = conversationStart
        
        self.conversationEnd = conversationEnd
        
        self.mediaStatsMinConversationMos = mediaStatsMinConversationMos
        
        self.mediaStatsMinConversationRFactor = mediaStatsMinConversationRFactor
        
        self.originatingDirection = originatingDirection
        
        self.evaluations = evaluations
        
        self.surveys = surveys
        
        self.divisionIds = divisionIds
        
        self.participants = participants
        
    }


}

