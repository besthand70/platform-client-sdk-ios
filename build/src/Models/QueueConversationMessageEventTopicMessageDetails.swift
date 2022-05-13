//
// QueueConversationMessageEventTopicMessageDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationMessageEventTopicMessageDetails: Codable {

    public enum MessageStatus: String, Codable { 
        case queued = "queued"
        case sent = "sent"
        case failed = "failed"
        case received = "received"
        case deliverySuccess = "delivery-success"
        case deliveryFailed = "delivery-failed"
        case read = "read"
    }
    public var message: QueueConversationMessageEventTopicUriReference?
    public var messageTime: Date?
    public var messageSegmentCount: Int?
    public var messageStatus: MessageStatus?
    public var media: [QueueConversationMessageEventTopicMessageMedia]?
    public var stickers: [QueueConversationMessageEventTopicMessageSticker]?
    public var errorInfo: QueueConversationMessageEventTopicErrorDetails?

    public init(message: QueueConversationMessageEventTopicUriReference?, messageTime: Date?, messageSegmentCount: Int?, messageStatus: MessageStatus?, media: [QueueConversationMessageEventTopicMessageMedia]?, stickers: [QueueConversationMessageEventTopicMessageSticker]?, errorInfo: QueueConversationMessageEventTopicErrorDetails?) {
        self.message = message
        self.messageTime = messageTime
        self.messageSegmentCount = messageSegmentCount
        self.messageStatus = messageStatus
        self.media = media
        self.stickers = stickers
        self.errorInfo = errorInfo
    }


}

