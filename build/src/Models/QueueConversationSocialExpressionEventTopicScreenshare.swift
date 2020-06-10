//
// QueueConversationSocialExpressionEventTopicScreenshare.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationSocialExpressionEventTopicScreenshare: Codable {

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
    public var _self: QueueConversationSocialExpressionEventTopicAddress?
    public var _id: String?
    public var context: String?
    public var sharing: Bool?
    public var provider: String?
    public var scriptId: String?
    public var peerId: String?
    public var disconnectType: DisconnectType?
    public var connectedTime: Date?
    public var disconnectedTime: Date?
    public var wrapup: QueueConversationSocialExpressionEventTopicWrapup?
    public var additionalProperties: JSON?

    public init(state: State?, _self: QueueConversationSocialExpressionEventTopicAddress?, _id: String?, context: String?, sharing: Bool?, provider: String?, scriptId: String?, peerId: String?, disconnectType: DisconnectType?, connectedTime: Date?, disconnectedTime: Date?, wrapup: QueueConversationSocialExpressionEventTopicWrapup?, additionalProperties: JSON?) {
        
        self.state = state
        
        self._self = _self
        
        self._id = _id
        
        self.context = context
        
        self.sharing = sharing
        
        self.provider = provider
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.disconnectType = disconnectType
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.wrapup = wrapup
        
        self.additionalProperties = additionalProperties
        
    }

    public enum CodingKeys: String, CodingKey { 
        case state
        case _self = "self"
        case _id = "id"
        case context
        case sharing
        case provider
        case scriptId
        case peerId
        case disconnectType
        case connectedTime
        case disconnectedTime
        case wrapup
        case additionalProperties
    }


}

