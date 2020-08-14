//
// QueueConversationVideoEventTopicChat.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationVideoEventTopicChat: Codable {

    public enum State: String, Codable { 
        case alerting = "ALERTING"
        case dialing = "DIALING"
        case contacting = "CONTACTING"
        case offering = "OFFERING"
        case connected = "CONNECTED"
        case disconnected = "DISCONNECTED"
        case terminated = "TERMINATED"
        case _none = "NONE"
    }
    public enum DisconnectType: String, Codable { 
        case endpoint = "ENDPOINT"
        case client = "CLIENT"
        case system = "SYSTEM"
        case timeout = "TIMEOUT"
        case transfer = "TRANSFER"
        case transferConference = "TRANSFER_CONFERENCE"
        case transferConsult = "TRANSFER_CONSULT"
        case transferNoanswer = "TRANSFER_NOANSWER"
        case transferNotavailable = "TRANSFER_NOTAVAILABLE"
        case transferForward = "TRANSFER_FORWARD"
        case transportFailure = "TRANSPORT_FAILURE"
        case error = "ERROR"
        case peer = "PEER"
        case other = "OTHER"
        case spam = "SPAM"
        case uncallable = "UNCALLABLE"
    }
    public var state: State?
    public var _id: String?
    public var provider: String?
    public var scriptId: String?
    public var peerId: String?
    public var roomId: String?
    public var avatarImageUrl: String?
    public var held: Bool?
    public var disconnectType: DisconnectType?
    public var startHoldTime: Date?
    public var connectedTime: Date?
    public var disconnectedTime: Date?
    public var journeyContext: QueueConversationVideoEventTopicJourneyContext?
    public var wrapup: QueueConversationVideoEventTopicWrapup?
    public var afterCallWork: QueueConversationVideoEventTopicAfterCallWork?
    public var additionalProperties: JSON?

    public init(state: State?, _id: String?, provider: String?, scriptId: String?, peerId: String?, roomId: String?, avatarImageUrl: String?, held: Bool?, disconnectType: DisconnectType?, startHoldTime: Date?, connectedTime: Date?, disconnectedTime: Date?, journeyContext: QueueConversationVideoEventTopicJourneyContext?, wrapup: QueueConversationVideoEventTopicWrapup?, afterCallWork: QueueConversationVideoEventTopicAfterCallWork?, additionalProperties: JSON?) {
        
        self.state = state
        
        self._id = _id
        
        self.provider = provider
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.roomId = roomId
        
        self.avatarImageUrl = avatarImageUrl
        
        self.held = held
        
        self.disconnectType = disconnectType
        
        self.startHoldTime = startHoldTime
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.journeyContext = journeyContext
        
        self.wrapup = wrapup
        
        self.afterCallWork = afterCallWork
        
        self.additionalProperties = additionalProperties
        
    }

    public enum CodingKeys: String, CodingKey { 
        case state
        case _id = "id"
        case provider
        case scriptId
        case peerId
        case roomId
        case avatarImageUrl
        case held
        case disconnectType
        case startHoldTime
        case connectedTime
        case disconnectedTime
        case journeyContext
        case wrapup
        case afterCallWork
        case additionalProperties
    }


}

