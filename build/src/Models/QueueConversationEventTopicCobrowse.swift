//
// QueueConversationEventTopicCobrowse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationEventTopicCobrowse: Codable {

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
        case transportFailure = "TRANSPORT_FAILURE"
        case error = "ERROR"
        case peer = "PEER"
        case other = "OTHER"
        case spam = "SPAM"
        case uncallable = "UNCALLABLE"
    }
    public var state: State?
    public var disconnectType: DisconnectType?
    public var _id: String?
    public var _self: QueueConversationEventTopicAddress?
    public var roomId: String?
    public var cobrowseSessionId: String?
    public var cobrowseRole: String?
    public var controlling: [String]?
    public var viewerUrl: String?
    public var provider: String?
    public var scriptId: String?
    public var peerId: String?
    public var providerEventTime: Date?
    public var connectedTime: Date?
    public var disconnectedTime: Date?
    public var wrapup: QueueConversationEventTopicWrapup?
    public var additionalProperties: JSON?

    public init(state: State?, disconnectType: DisconnectType?, _id: String?, _self: QueueConversationEventTopicAddress?, roomId: String?, cobrowseSessionId: String?, cobrowseRole: String?, controlling: [String]?, viewerUrl: String?, provider: String?, scriptId: String?, peerId: String?, providerEventTime: Date?, connectedTime: Date?, disconnectedTime: Date?, wrapup: QueueConversationEventTopicWrapup?, additionalProperties: JSON?) {
        
        self.state = state
        
        self.disconnectType = disconnectType
        
        self._id = _id
        
        self._self = _self
        
        self.roomId = roomId
        
        self.cobrowseSessionId = cobrowseSessionId
        
        self.cobrowseRole = cobrowseRole
        
        self.controlling = controlling
        
        self.viewerUrl = viewerUrl
        
        self.provider = provider
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.providerEventTime = providerEventTime
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.wrapup = wrapup
        
        self.additionalProperties = additionalProperties
        
    }

    public enum CodingKeys: String, CodingKey { 
        case state
        case disconnectType
        case _id = "id"
        case _self = "self"
        case roomId
        case cobrowseSessionId
        case cobrowseRole
        case controlling
        case viewerUrl
        case provider
        case scriptId
        case peerId
        case providerEventTime
        case connectedTime
        case disconnectedTime
        case wrapup
        case additionalProperties
    }


}

