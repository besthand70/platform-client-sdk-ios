//
// OpenNormalizedMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Open Messaging rich media message structure */

public class OpenNormalizedMessage: Codable {

    public enum ModelType: String, Codable { 
        case text = "Text"
        case receipt = "Receipt"
    }
    public enum Status: String, Codable { 
        case sent = "Sent"
        case delivered = "Delivered"
        case read = "Read"
        case failed = "Failed"
        case published = "Published"
        case removed = "Removed"
    }
    public enum Direction: String, Codable { 
        case inbound = "Inbound"
        case outbound = "Outbound"
    }
    /** Unique ID of the message. This ID is generated by Messaging Platform. Message receipts will have the same ID as the message they reference. */
    public var _id: String?
    /** Channel-specific information that describes the message and the message channel/provider. */
    public var channel: OpenMessagingChannel?
    /** Message type. */
    public var type: ModelType?
    /** Message text. */
    public var text: String?
    /** List of content elements. */
    public var content: [OpenMessageContent]?
    /** Message receipt status, only used with type Receipt. */
    public var status: Status?
    /** List of reasons for a message receipt that indicates the message has failed. Only used with Failed status. */
    public var reasons: [Reason]?
    /** Indicates if this is the last message receipt for this message, or if another message receipt can be expected. */
    public var isFinalReceipt: Bool?
    /** The direction of the message. */
    public var direction: Direction?
    /** Additional metadata about this message. */
    public var metadata: [String:String]?

    public init(_id: String?, channel: OpenMessagingChannel?, type: ModelType?, text: String?, content: [OpenMessageContent]?, status: Status?, reasons: [Reason]?, isFinalReceipt: Bool?, direction: Direction?, metadata: [String:String]?) {
        
        self._id = _id
        
        self.channel = channel
        
        self.type = type
        
        self.text = text
        
        self.content = content
        
        self.status = status
        
        self.reasons = reasons
        
        self.isFinalReceipt = isFinalReceipt
        
        self.direction = direction
        
        self.metadata = metadata
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case channel
        case type
        case text
        case content
        case status
        case reasons
        case isFinalReceipt
        case direction
        case metadata
    }


}

