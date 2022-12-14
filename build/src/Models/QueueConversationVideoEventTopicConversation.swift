//
// QueueConversationVideoEventTopicConversation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationVideoEventTopicConversation: Codable {

    public var _id: String?
    public var maxParticipants: Int?
    public var participants: [QueueConversationVideoEventTopicParticipant]?
    public var recordingState: String?
    public var address: String?
    public var externalTag: String?

    public init(_id: String?, maxParticipants: Int?, participants: [QueueConversationVideoEventTopicParticipant]?, recordingState: String?, address: String?, externalTag: String?) {
        self._id = _id
        self.maxParticipants = maxParticipants
        self.participants = participants
        self.recordingState = recordingState
        self.address = address
        self.externalTag = externalTag
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case maxParticipants
        case participants
        case recordingState
        case address
        case externalTag
    }


}

