//
// QueueConversationCallbackEventTopicCallbackConversation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationCallbackEventTopicCallbackConversation: Codable {

    public var _id: String?
    public var name: String?
    public var participants: [QueueConversationCallbackEventTopicCallbackMediaParticipant]?
    public var otherMediaUris: [String]?

    public init(_id: String?, name: String?, participants: [QueueConversationCallbackEventTopicCallbackMediaParticipant]?, otherMediaUris: [String]?) {
        self._id = _id
        self.name = name
        self.participants = participants
        self.otherMediaUris = otherMediaUris
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case participants
        case otherMediaUris
    }


}

