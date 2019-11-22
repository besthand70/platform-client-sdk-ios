//
// ConversationScreenShareEventTopicScreenShareMediaParticipant.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationScreenShareEventTopicScreenShareMediaParticipant: Codable {

    public enum State: String, Codable { 
        case alerting = "alerting"
        case dialing = "dialing"
        case contacting = "contacting"
        case offering = "offering"
        case connected = "connected"
        case disconnected = "disconnected"
        case terminated = "terminated"
        case converting = "converting"
        case uploading = "uploading"
        case transmitting = "transmitting"
        case scheduled = "scheduled"
        case _none = "none"
    }
    public enum Direction: String, Codable { 
        case inbound = "inbound"
        case outbound = "outbound"
    }
    public enum DisconnectType: String, Codable { 
        case endpoint = "endpoint"
        case client = "client"
        case system = "system"
        case transfer = "transfer"
        case timeout = "timeout"
        case transferConference = "transfer.conference"
        case transferConsult = "transfer.consult"
        case transferForward = "transfer.forward"
        case transferNoanswer = "transfer.noanswer"
        case transferNotavailable = "transfer.notavailable"
        case transportFailure = "transport.failure"
        case error = "error"
        case peer = "peer"
        case other = "other"
        case spam = "spam"
        case uncallable = "uncallable"
    }
    public enum FlaggedReason: String, Codable { 
        case general = "general"
    }
    public var _id: String?
    public var name: String?
    public var address: String?
    public var startTime: Date?
    public var connectedTime: Date?
    public var endTime: Date?
    public var startHoldTime: Date?
    public var purpose: String?
    public var state: State?
    public var direction: Direction?
    public var disconnectType: DisconnectType?
    public var held: Bool?
    public var wrapupRequired: Bool?
    public var wrapupPrompt: String?
    public var user: ConversationScreenShareEventTopicUriReference?
    public var queue: ConversationScreenShareEventTopicUriReference?
    public var attributes: [String:String]?
    public var errorInfo: ConversationScreenShareEventTopicErrorBody?
    public var script: ConversationScreenShareEventTopicUriReference?
    public var wrapupTimeoutMs: Int?
    public var wrapupSkipped: Bool?
    public var alertingTimeoutMs: Int?
    public var provider: String?
    public var externalContact: ConversationScreenShareEventTopicUriReference?
    public var externalOrganization: ConversationScreenShareEventTopicUriReference?
    public var wrapup: ConversationScreenShareEventTopicWrapup?
    public var conversationRoutingData: ConversationScreenShareEventTopicConversationRoutingData?
    public var peer: String?
    public var screenRecordingState: String?
    public var flaggedReason: FlaggedReason?
    public var journeyContext: ConversationScreenShareEventTopicJourneyContext?
    public var startAcwTime: Date?
    public var endAcwTime: Date?
    public var context: String?
    public var peerCount: Int?
    public var sharing: Bool?

    public init(_id: String?, name: String?, address: String?, startTime: Date?, connectedTime: Date?, endTime: Date?, startHoldTime: Date?, purpose: String?, state: State?, direction: Direction?, disconnectType: DisconnectType?, held: Bool?, wrapupRequired: Bool?, wrapupPrompt: String?, user: ConversationScreenShareEventTopicUriReference?, queue: ConversationScreenShareEventTopicUriReference?, attributes: [String:String]?, errorInfo: ConversationScreenShareEventTopicErrorBody?, script: ConversationScreenShareEventTopicUriReference?, wrapupTimeoutMs: Int?, wrapupSkipped: Bool?, alertingTimeoutMs: Int?, provider: String?, externalContact: ConversationScreenShareEventTopicUriReference?, externalOrganization: ConversationScreenShareEventTopicUriReference?, wrapup: ConversationScreenShareEventTopicWrapup?, conversationRoutingData: ConversationScreenShareEventTopicConversationRoutingData?, peer: String?, screenRecordingState: String?, flaggedReason: FlaggedReason?, journeyContext: ConversationScreenShareEventTopicJourneyContext?, startAcwTime: Date?, endAcwTime: Date?, context: String?, peerCount: Int?, sharing: Bool?) {
        
        self._id = _id
        
        self.name = name
        
        self.address = address
        
        self.startTime = startTime
        
        self.connectedTime = connectedTime
        
        self.endTime = endTime
        
        self.startHoldTime = startHoldTime
        
        self.purpose = purpose
        
        self.state = state
        
        self.direction = direction
        
        self.disconnectType = disconnectType
        
        self.held = held
        
        self.wrapupRequired = wrapupRequired
        
        self.wrapupPrompt = wrapupPrompt
        
        self.user = user
        
        self.queue = queue
        
        self.attributes = attributes
        
        self.errorInfo = errorInfo
        
        self.script = script
        
        self.wrapupTimeoutMs = wrapupTimeoutMs
        
        self.wrapupSkipped = wrapupSkipped
        
        self.alertingTimeoutMs = alertingTimeoutMs
        
        self.provider = provider
        
        self.externalContact = externalContact
        
        self.externalOrganization = externalOrganization
        
        self.wrapup = wrapup
        
        self.conversationRoutingData = conversationRoutingData
        
        self.peer = peer
        
        self.screenRecordingState = screenRecordingState
        
        self.flaggedReason = flaggedReason
        
        self.journeyContext = journeyContext
        
        self.startAcwTime = startAcwTime
        
        self.endAcwTime = endAcwTime
        
        self.context = context
        
        self.peerCount = peerCount
        
        self.sharing = sharing
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case address
        case startTime
        case connectedTime
        case endTime
        case startHoldTime
        case purpose
        case state
        case direction
        case disconnectType
        case held
        case wrapupRequired
        case wrapupPrompt
        case user
        case queue
        case attributes
        case errorInfo
        case script
        case wrapupTimeoutMs
        case wrapupSkipped
        case alertingTimeoutMs
        case provider
        case externalContact
        case externalOrganization
        case wrapup
        case conversationRoutingData
        case peer
        case screenRecordingState
        case flaggedReason
        case journeyContext
        case startAcwTime
        case endAcwTime
        case context
        case peerCount
        case sharing
    }


}

