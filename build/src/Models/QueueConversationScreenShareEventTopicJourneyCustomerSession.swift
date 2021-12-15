//
// QueueConversationScreenShareEventTopicJourneyCustomerSession.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A subset of the Journey System&#39;s tracked customer session data at a point-in-time (for external linkage and internal usage/context) */

public class QueueConversationScreenShareEventTopicJourneyCustomerSession: Codable {

    /** An ID of a Customer/User&#39;s session within the Journey System at a point-in-time */
    public var _id: String?
    /** The type of the Customer/User&#39;s session within the Journey System (e.g. web, app) */
    public var type: String?

    public init(_id: String?, type: String?) {
        
        self._id = _id
        
        self.type = type
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case type
    }


}

