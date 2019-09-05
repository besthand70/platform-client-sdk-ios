//
// ConversationMessageEventTopicMessageDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationMessageEventTopicMessageDetails: Codable {

    public enum MessageStatus: String, Codable { 
        case queued = "QUEUED"
        case sent = "SENT"
        case failed = "FAILED"
        case received = "RECEIVED"
        case deliverySuccess = "DELIVERY_SUCCESS"
        case deliveryFailed = "DELIVERY_FAILED"
        case read = "READ"
    }
    public var message: ConversationMessageEventTopicUriReference?
    public var messageTime: Date?
    public var messageSegmentCount: Int?
    public var messageStatus: MessageStatus?
    public var media: [ConversationMessageEventTopicMessageMedia]?
    public var stickers: [ConversationMessageEventTopicMessageSticker]?

    public init(message: ConversationMessageEventTopicUriReference?, messageTime: Date?, messageSegmentCount: Int?, messageStatus: MessageStatus?, media: [ConversationMessageEventTopicMessageMedia]?, stickers: [ConversationMessageEventTopicMessageSticker]?) {
        
        self.message = message
        
        self.messageTime = messageTime
        
        self.messageSegmentCount = messageSegmentCount
        
        self.messageStatus = messageStatus
        
        self.media = media
        
        self.stickers = stickers
        
    }


}

