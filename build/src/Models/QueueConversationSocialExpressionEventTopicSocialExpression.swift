//
// QueueConversationSocialExpressionEventTopicSocialExpression.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationSocialExpressionEventTopicSocialExpression: Codable {

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
    public var state: State?
    public var _id: String?
    public var socialMediaId: String?
    public var socialMediaHub: String?
    public var socialUserName: String?
    public var previewText: String?
    public var recordingId: String?
    public var held: Bool?
    public var provider: String?
    public var scriptId: String?
    public var peerId: String?
    public var disconnectType: DisconnectType?
    public var startHoldTime: Date?
    public var connectedTime: Date?
    public var disconnectedTime: Date?
    public var additionalProperties: JSON?

    public init(state: State?, _id: String?, socialMediaId: String?, socialMediaHub: String?, socialUserName: String?, previewText: String?, recordingId: String?, held: Bool?, provider: String?, scriptId: String?, peerId: String?, disconnectType: DisconnectType?, startHoldTime: Date?, connectedTime: Date?, disconnectedTime: Date?, additionalProperties: JSON?) {
        
        self.state = state
        
        self._id = _id
        
        self.socialMediaId = socialMediaId
        
        self.socialMediaHub = socialMediaHub
        
        self.socialUserName = socialUserName
        
        self.previewText = previewText
        
        self.recordingId = recordingId
        
        self.held = held
        
        self.provider = provider
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.disconnectType = disconnectType
        
        self.startHoldTime = startHoldTime
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.additionalProperties = additionalProperties
        
    }

    public enum CodingKeys: String, CodingKey { 
        case state
        case _id = "id"
        case socialMediaId
        case socialMediaHub
        case socialUserName
        case previewText
        case recordingId
        case held
        case provider
        case scriptId
        case peerId
        case disconnectType
        case startHoldTime
        case connectedTime
        case disconnectedTime
        case additionalProperties
    }


}

