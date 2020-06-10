//
// QueueConversationVideoEventTopicVideo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationVideoEventTopicVideo: Codable {

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
    public var _self: QueueConversationVideoEventTopicAddress?
    public var _id: String?
    public var context: String?
    public var audioMuted: Bool?
    public var videoMuted: Bool?
    public var sharingScreen: Bool?
    public var provider: String?
    public var scriptId: String?
    public var peerId: String?
    public var disconnectType: DisconnectType?
    public var connectedTime: Date?
    public var disconnectedTime: Date?
    public var msids: [String]?
    public var wrapup: QueueConversationVideoEventTopicWrapup?
    public var additionalProperties: JSON?

    public init(state: State?, _self: QueueConversationVideoEventTopicAddress?, _id: String?, context: String?, audioMuted: Bool?, videoMuted: Bool?, sharingScreen: Bool?, provider: String?, scriptId: String?, peerId: String?, disconnectType: DisconnectType?, connectedTime: Date?, disconnectedTime: Date?, msids: [String]?, wrapup: QueueConversationVideoEventTopicWrapup?, additionalProperties: JSON?) {
        
        self.state = state
        
        self._self = _self
        
        self._id = _id
        
        self.context = context
        
        self.audioMuted = audioMuted
        
        self.videoMuted = videoMuted
        
        self.sharingScreen = sharingScreen
        
        self.provider = provider
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.disconnectType = disconnectType
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.msids = msids
        
        self.wrapup = wrapup
        
        self.additionalProperties = additionalProperties
        
    }

    public enum CodingKeys: String, CodingKey { 
        case state
        case _self = "self"
        case _id = "id"
        case context
        case audioMuted
        case videoMuted
        case sharingScreen
        case provider
        case scriptId
        case peerId
        case disconnectType
        case connectedTime
        case disconnectedTime
        case msids
        case wrapup
        case additionalProperties
    }


}

