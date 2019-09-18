//
// CreateQueueMediaAssociationRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A combination of a single queue and one or more media types to associate with a service goal group */

public class CreateQueueMediaAssociationRequest: Codable {

    public enum MediaTypes: String, Codable { 
        case voice = "Voice"
        case chat = "Chat"
        case email = "Email"
        case callback = "Callback"
        case message = "Message"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The queue to associate with the service goal group */
    public var queue: QueueReference?
    /** The media types of the given queue to associate with the service goal group */
    public var mediaTypes: [MediaTypes]?

    public init(_id: String?, queue: QueueReference?, mediaTypes: [MediaTypes]?) {
        
        self._id = _id
        
        self.queue = queue
        
        self.mediaTypes = mediaTypes
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case queue
        case mediaTypes
    }


}

