//
// QueueConversationEventTopicJourneyCustomerSession.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationEventTopicJourneyCustomerSession: Codable {

    public var _id: String?
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

