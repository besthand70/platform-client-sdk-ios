//
// MessageData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MessageData: Codable {

    public enum Direction: String, Codable { 
        case inbound = "inbound"
        case outbound = "outbound"
    }
    public enum MessengerType: String, Codable { 
        case sms = "sms"
        case facebook = "facebook"
        case twitter = "twitter"
        case line = "line"
        case whatsapp = "whatsapp"
        case webmessaging = "webmessaging"
    }
    public enum Status: String, Codable { 
        case queued = "queued"
        case sent = "sent"
        case failed = "failed"
        case received = "received"
        case deliverySuccess = "delivery-success"
        case deliveryFailed = "delivery-failed"
        case read = "read"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** The unique identifier of the message from provider */
    public var providerMessageId: String?
    /** The time when the message was received or sent. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var timestamp: Date?
    /** The sender of the text message. */
    public var fromAddress: String?
    /** The recipient of the text message. */
    public var toAddress: String?
    /** The direction of the message. */
    public var direction: Direction?
    /** Type of text messenger. */
    public var messengerType: MessengerType?
    /** The body of the text message. */
    public var textBody: String?
    /** The status of the message. */
    public var status: Status?
    /** The media details associated to a message. */
    public var media: [MessageMedia]?
    /** The sticker details associated to a message. */
    public var stickers: [MessageSticker]?
    /** User who sent this message. */
    public var createdBy: User?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, providerMessageId: String?, timestamp: Date?, fromAddress: String?, toAddress: String?, direction: Direction?, messengerType: MessengerType?, textBody: String?, status: Status?, media: [MessageMedia]?, stickers: [MessageSticker]?, createdBy: User?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.providerMessageId = providerMessageId
        
        self.timestamp = timestamp
        
        self.fromAddress = fromAddress
        
        self.toAddress = toAddress
        
        self.direction = direction
        
        self.messengerType = messengerType
        
        self.textBody = textBody
        
        self.status = status
        
        self.media = media
        
        self.stickers = stickers
        
        self.createdBy = createdBy
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case providerMessageId
        case timestamp
        case fromAddress
        case toAddress
        case direction
        case messengerType
        case textBody
        case status
        case media
        case stickers
        case createdBy
        case selfUri
    }


}

