//
// CallbackConversation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CallbackConversation: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** The list of participants involved in the conversation. */
    public var participants: [CallbackMediaParticipant]?
    /** The list of other media channels involved in the conversation. */
    public var otherMediaUris: [String]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, participants: [CallbackMediaParticipant]?, otherMediaUris: [String]?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.participants = participants
        
        self.otherMediaUris = otherMediaUris
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case participants
        case otherMediaUris
        case selfUri
    }


}

