//
// QueueConversationMessageEventTopicMessageMediaParticipant.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationMessageEventTopicMessageMediaParticipant: Codable {

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
    public enum ModelType: String, Codable { 
        case unknown = "unknown"
        case sms = "sms"
        case twitter = "twitter"
        case facebook = "facebook"
        case line = "line"
        case viber = "viber"
        case wechat = "wechat"
        case whatsapp = "whatsapp"
        case telegram = "telegram"
        case kakao = "kakao"
        case webmessaging = "webmessaging"
        case _open = "open"
        case instagram = "instagram"
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
    public var user: QueueConversationMessageEventTopicUriReference?
    public var queue: QueueConversationMessageEventTopicUriReference?
    public var team: QueueConversationMessageEventTopicUriReference?
    public var attributes: [String:String]?
    public var errorInfo: QueueConversationMessageEventTopicErrorBody?
    public var script: QueueConversationMessageEventTopicUriReference?
    public var wrapupTimeoutMs: Int?
    public var wrapupSkipped: Bool?
    public var alertingTimeoutMs: Int?
    public var provider: String?
    public var externalContact: QueueConversationMessageEventTopicUriReference?
    public var externalOrganization: QueueConversationMessageEventTopicUriReference?
    public var wrapup: QueueConversationMessageEventTopicWrapup?
    public var conversationRoutingData: QueueConversationMessageEventTopicConversationRoutingData?
    public var peer: String?
    public var screenRecordingState: String?
    public var flaggedReason: FlaggedReason?
    public var journeyContext: QueueConversationMessageEventTopicJourneyContext?
    public var startAcwTime: Date?
    public var endAcwTime: Date?
    public var messages: [QueueConversationMessageEventTopicMessageDetails]?
    public var type: ModelType?
    public var recipientCountry: String?
    public var recipientType: String?

    public init(_id: String?, name: String?, address: String?, startTime: Date?, connectedTime: Date?, endTime: Date?, startHoldTime: Date?, purpose: String?, state: State?, direction: Direction?, disconnectType: DisconnectType?, held: Bool?, wrapupRequired: Bool?, wrapupPrompt: String?, user: QueueConversationMessageEventTopicUriReference?, queue: QueueConversationMessageEventTopicUriReference?, team: QueueConversationMessageEventTopicUriReference?, attributes: [String:String]?, errorInfo: QueueConversationMessageEventTopicErrorBody?, script: QueueConversationMessageEventTopicUriReference?, wrapupTimeoutMs: Int?, wrapupSkipped: Bool?, alertingTimeoutMs: Int?, provider: String?, externalContact: QueueConversationMessageEventTopicUriReference?, externalOrganization: QueueConversationMessageEventTopicUriReference?, wrapup: QueueConversationMessageEventTopicWrapup?, conversationRoutingData: QueueConversationMessageEventTopicConversationRoutingData?, peer: String?, screenRecordingState: String?, flaggedReason: FlaggedReason?, journeyContext: QueueConversationMessageEventTopicJourneyContext?, startAcwTime: Date?, endAcwTime: Date?, messages: [QueueConversationMessageEventTopicMessageDetails]?, type: ModelType?, recipientCountry: String?, recipientType: String?) {
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
        self.team = team
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
        self.messages = messages
        self.type = type
        self.recipientCountry = recipientCountry
        self.recipientType = recipientType
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
        case team
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
        case messages
        case type
        case recipientCountry
        case recipientType
    }


}

