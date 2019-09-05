//
// ConversationEventTopicMessageDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationEventTopicMessageDetails: Codable {

    public enum MessageStatus: String, Codable { 
        case queued = "QUEUED"
        case sent = "SENT"
        case failed = "FAILED"
        case received = "RECEIVED"
        case deliverySuccess = "DELIVERY_SUCCESS"
        case deliveryFailed = "DELIVERY_FAILED"
        case read = "READ"
    }
    public var messageId: String?
    public var messageTime: Date?
    public var messageStatus: MessageStatus?
    public var messageSegmentCount: Int?
    public var media: [ConversationEventTopicMessageMedia]?
    public var stickers: [ConversationEventTopicMessageSticker]?

    public init(messageId: String?, messageTime: Date?, messageStatus: MessageStatus?, messageSegmentCount: Int?, media: [ConversationEventTopicMessageMedia]?, stickers: [ConversationEventTopicMessageSticker]?) {
        
        self.messageId = messageId
        
        self.messageTime = messageTime
        
        self.messageStatus = messageStatus
        
        self.messageSegmentCount = messageSegmentCount
        
        self.media = media
        
        self.stickers = stickers
        
    }


}

