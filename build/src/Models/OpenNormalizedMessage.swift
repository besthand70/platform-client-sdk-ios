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
    /** The direction of the message. */
    public var direction: Direction?

    public init(_id: String?, channel: OpenMessagingChannel?, type: ModelType?, text: String?, content: [OpenMessageContent]?, direction: Direction?) {
        
        self._id = _id
        
        self.channel = channel
        
        self.type = type
        
        self.text = text
        
        self.content = content
        
        self.direction = direction
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case channel
        case type
        case text
        case content
        case direction
    }


}

