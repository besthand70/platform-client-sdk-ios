//
// AnalyticsParticipant.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AnalyticsParticipant: Codable {

    public enum Purpose: String, Codable { 
        case manual = "manual"
        case dialer = "dialer"
        case inbound = "inbound"
        case acd = "acd"
        case ivr = "ivr"
        case voicemail = "voicemail"
        case outbound = "outbound"
        case agent = "agent"
        case user = "user"
        case station = "station"
        case group = "group"
        case customer = "customer"
        case external = "external"
        case fax = "fax"
        case workflow = "workflow"
        case campaign = "campaign"
        case api = "api"
    }
    public enum FlaggedReason: String, Codable { 
        case general = "general"
    }
    /** Unique identifier for the participant */
    public var participantId: String?
    /** A human readable name identifying the participant */
    public var participantName: String?
    /** If a user, then this will be the unique identifier for the user */
    public var userId: String?
    /** The participant&#39;s purpose */
    public var purpose: Purpose?
    /** External Contact Identifier */
    public var externalContactId: String?
    /** External Organization Identifier */
    public var externalOrganizationId: String?
    /** Reason for which participant flagged conversation */
    public var flaggedReason: FlaggedReason?
    /** The team id the user is a member of */
    public var teamId: String?
    /** Unique identifiers of the active virtual agent assistants */
    public var agentAssistantIds: [String]?
    /** List of sessions associated to this participant */
    public var sessions: [AnalyticsSession]?
    /** List of attributes associated to this participant */
    public var attributes: [String:String]?

    public init(participantId: String?, participantName: String?, userId: String?, purpose: Purpose?, externalContactId: String?, externalOrganizationId: String?, flaggedReason: FlaggedReason?, teamId: String?, agentAssistantIds: [String]?, sessions: [AnalyticsSession]?, attributes: [String:String]?) {
        
        self.participantId = participantId
        
        self.participantName = participantName
        
        self.userId = userId
        
        self.purpose = purpose
        
        self.externalContactId = externalContactId
        
        self.externalOrganizationId = externalOrganizationId
        
        self.flaggedReason = flaggedReason
        
        self.teamId = teamId
        
        self.agentAssistantIds = agentAssistantIds
        
        self.sessions = sessions
        
        self.attributes = attributes
        
    }


}

