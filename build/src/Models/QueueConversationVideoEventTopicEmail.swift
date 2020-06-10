//
// QueueConversationVideoEventTopicEmail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationVideoEventTopicEmail: Codable {

    public enum State: String, Codable { 
        case alerting = "ALERTING"
        case connected = "CONNECTED"
        case disconnected = "DISCONNECTED"
        case _none = "NONE"
        case transmitting = "TRANSMITTING"
    }
    public enum DisconnectType: String, Codable { 
        case endpoint = "ENDPOINT"
        case client = "CLIENT"
        case system = "SYSTEM"
        case timeout = "TIMEOUT"
        case transfer = "TRANSFER"
        case transferConference = "TRANSFER_CONFERENCE"
        case transferConsult = "TRANSFER_CONSULT"
        case transferForward = "TRANSFER_FORWARD"
        case transferNoanswer = "TRANSFER_NOANSWER"
        case transferNotavailable = "TRANSFER_NOTAVAILABLE"
        case transportFailure = "TRANSPORT_FAILURE"
        case error = "ERROR"
        case peer = "PEER"
        case other = "OTHER"
        case spam = "SPAM"
        case uncallable = "UNCALLABLE"
    }
    public enum Direction: String, Codable { 
        case outbound = "OUTBOUND"
        case inbound = "INBOUND"
    }
    public var _id: String?
    public var state: State?
    public var held: Bool?
    public var autoGenerated: Bool?
    public var subject: String?
    public var provider: String?
    public var scriptId: String?
    public var peerId: String?
    public var messagesSent: Int?
    public var errorInfo: QueueConversationVideoEventTopicErrorDetails?
    public var disconnectType: DisconnectType?
    public var startHoldTime: Date?
    public var connectedTime: Date?
    public var disconnectedTime: Date?
    public var messageId: String?
    public var direction: Direction?
    public var draftAttachments: [QueueConversationVideoEventTopicAttachment]?
    public var spam: Bool?
    public var wrapup: QueueConversationVideoEventTopicWrapup?
    public var additionalProperties: JSON?

    public init(_id: String?, state: State?, held: Bool?, autoGenerated: Bool?, subject: String?, provider: String?, scriptId: String?, peerId: String?, messagesSent: Int?, errorInfo: QueueConversationVideoEventTopicErrorDetails?, disconnectType: DisconnectType?, startHoldTime: Date?, connectedTime: Date?, disconnectedTime: Date?, messageId: String?, direction: Direction?, draftAttachments: [QueueConversationVideoEventTopicAttachment]?, spam: Bool?, wrapup: QueueConversationVideoEventTopicWrapup?, additionalProperties: JSON?) {
        
        self._id = _id
        
        self.state = state
        
        self.held = held
        
        self.autoGenerated = autoGenerated
        
        self.subject = subject
        
        self.provider = provider
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.messagesSent = messagesSent
        
        self.errorInfo = errorInfo
        
        self.disconnectType = disconnectType
        
        self.startHoldTime = startHoldTime
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.messageId = messageId
        
        self.direction = direction
        
        self.draftAttachments = draftAttachments
        
        self.spam = spam
        
        self.wrapup = wrapup
        
        self.additionalProperties = additionalProperties
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case state
        case held
        case autoGenerated
        case subject
        case provider
        case scriptId
        case peerId
        case messagesSent
        case errorInfo
        case disconnectType
        case startHoldTime
        case connectedTime
        case disconnectedTime
        case messageId
        case direction
        case draftAttachments
        case spam
        case wrapup
        case additionalProperties
    }


}

