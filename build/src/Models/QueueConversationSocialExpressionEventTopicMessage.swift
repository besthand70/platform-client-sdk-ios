//
// QueueConversationSocialExpressionEventTopicMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationSocialExpressionEventTopicMessage: Codable {

    public enum State: String, Codable { 
        case alerting = "ALERTING"
        case connected = "CONNECTED"
        case disconnected = "DISCONNECTED"
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
    public enum ModelType: String, Codable { 
        case unknown = "UNKNOWN"
        case sms = "SMS"
        case twitter = "TWITTER"
        case facebook = "FACEBOOK"
        case line = "LINE"
        case viber = "VIBER"
        case wechat = "WECHAT"
        case whatsapp = "WHATSAPP"
        case telegram = "TELEGRAM"
        case kakao = "KAKAO"
        case webmessaging = "WEBMESSAGING"
    }
    public var _id: String?
    public var state: State?
    public var held: Bool?
    public var errorInfo: QueueConversationSocialExpressionEventTopicErrorDetails?
    public var provider: String?
    public var scriptId: String?
    public var peerId: String?
    public var disconnectType: DisconnectType?
    public var startHoldTime: Date?
    public var connectedTime: Date?
    public var disconnectedTime: Date?
    public var toAddress: QueueConversationSocialExpressionEventTopicAddress?
    public var fromAddress: QueueConversationSocialExpressionEventTopicAddress?
    public var messages: [QueueConversationSocialExpressionEventTopicMessageDetails]?
    public var messagesTranscriptUri: String?
    public var type: ModelType?
    public var recipientCountry: String?
    public var recipientType: String?
    public var wrapup: QueueConversationSocialExpressionEventTopicWrapup?
    public var afterCallWork: QueueConversationSocialExpressionEventTopicAfterCallWork?
    public var afterCallWorkRequired: Bool?
    public var additionalProperties: JSON?

    public init(_id: String?, state: State?, held: Bool?, errorInfo: QueueConversationSocialExpressionEventTopicErrorDetails?, provider: String?, scriptId: String?, peerId: String?, disconnectType: DisconnectType?, startHoldTime: Date?, connectedTime: Date?, disconnectedTime: Date?, toAddress: QueueConversationSocialExpressionEventTopicAddress?, fromAddress: QueueConversationSocialExpressionEventTopicAddress?, messages: [QueueConversationSocialExpressionEventTopicMessageDetails]?, messagesTranscriptUri: String?, type: ModelType?, recipientCountry: String?, recipientType: String?, wrapup: QueueConversationSocialExpressionEventTopicWrapup?, afterCallWork: QueueConversationSocialExpressionEventTopicAfterCallWork?, afterCallWorkRequired: Bool?, additionalProperties: JSON?) {
        
        self._id = _id
        
        self.state = state
        
        self.held = held
        
        self.errorInfo = errorInfo
        
        self.provider = provider
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.disconnectType = disconnectType
        
        self.startHoldTime = startHoldTime
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.toAddress = toAddress
        
        self.fromAddress = fromAddress
        
        self.messages = messages
        
        self.messagesTranscriptUri = messagesTranscriptUri
        
        self.type = type
        
        self.recipientCountry = recipientCountry
        
        self.recipientType = recipientType
        
        self.wrapup = wrapup
        
        self.afterCallWork = afterCallWork
        
        self.afterCallWorkRequired = afterCallWorkRequired
        
        self.additionalProperties = additionalProperties
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case state
        case held
        case errorInfo
        case provider
        case scriptId
        case peerId
        case disconnectType
        case startHoldTime
        case connectedTime
        case disconnectedTime
        case toAddress
        case fromAddress
        case messages
        case messagesTranscriptUri
        case type
        case recipientCountry
        case recipientType
        case wrapup
        case afterCallWork
        case afterCallWorkRequired
        case additionalProperties
    }


}

