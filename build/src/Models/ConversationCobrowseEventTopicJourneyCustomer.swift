//
// ConversationCobrowseEventTopicJourneyCustomer.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationCobrowseEventTopicJourneyCustomer: Codable {

    public var _id: String?
    public var idType: String?

    public init(_id: String?, idType: String?) {
        
        self._id = _id
        
        self.idType = idType
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case idType
    }


}

