//
// QueueConversationEventTopicCallback.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationEventTopicCallback: Codable {

    public enum State: String, Codable { 
        case alerting = "ALERTING"
        case dialing = "DIALING"
        case contacting = "CONTACTING"
        case offering = "OFFERING"
        case connected = "CONNECTED"
        case disconnected = "DISCONNECTED"
        case terminated = "TERMINATED"
        case scheduled = "SCHEDULED"
        case uploading = "UPLOADING"
        case _none = "NONE"
    }
    public enum Direction: String, Codable { 
        case inbound = "INBOUND"
        case outbound = "OUTBOUND"
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
    public var direction: Direction?
    public var held: Bool?
    public var disconnectType: DisconnectType?
    public var startHoldTime: Date?
    public var dialerPreview: QueueConversationEventTopicDialerPreview?
    public var voicemail: QueueConversationEventTopicVoicemail?
    public var callbackNumbers: [String]?
    public var callbackUserName: String?
    public var scriptId: String?
    public var peerId: String?
    public var externalCampaign: Bool?
    public var skipEnabled: Bool?
    public var provider: String?
    public var timeoutSeconds: Int?
    public var connectedTime: Date?
    public var disconnectedTime: Date?
    public var callbackScheduledTime: Date?
    public var automatedCallbackConfigId: String?
    public var additionalProperties: JSON?

    public init(state: State?, _id: String?, direction: Direction?, held: Bool?, disconnectType: DisconnectType?, startHoldTime: Date?, dialerPreview: QueueConversationEventTopicDialerPreview?, voicemail: QueueConversationEventTopicVoicemail?, callbackNumbers: [String]?, callbackUserName: String?, scriptId: String?, peerId: String?, externalCampaign: Bool?, skipEnabled: Bool?, provider: String?, timeoutSeconds: Int?, connectedTime: Date?, disconnectedTime: Date?, callbackScheduledTime: Date?, automatedCallbackConfigId: String?, additionalProperties: JSON?) {
        
        self.state = state
        
        self._id = _id
        
        self.direction = direction
        
        self.held = held
        
        self.disconnectType = disconnectType
        
        self.startHoldTime = startHoldTime
        
        self.dialerPreview = dialerPreview
        
        self.voicemail = voicemail
        
        self.callbackNumbers = callbackNumbers
        
        self.callbackUserName = callbackUserName
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.externalCampaign = externalCampaign
        
        self.skipEnabled = skipEnabled
        
        self.provider = provider
        
        self.timeoutSeconds = timeoutSeconds
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.callbackScheduledTime = callbackScheduledTime
        
        self.automatedCallbackConfigId = automatedCallbackConfigId
        
        self.additionalProperties = additionalProperties
        
    }

    public enum CodingKeys: String, CodingKey { 
        case state
        case _id = "id"
        case direction
        case held
        case disconnectType
        case startHoldTime
        case dialerPreview
        case voicemail
        case callbackNumbers
        case callbackUserName
        case scriptId
        case peerId
        case externalCampaign
        case skipEnabled
        case provider
        case timeoutSeconds
        case connectedTime
        case disconnectedTime
        case callbackScheduledTime
        case automatedCallbackConfigId
        case additionalProperties
    }


}

