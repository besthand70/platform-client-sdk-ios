//
// QueueConversationVideoEventTopicMessageMetadataEvent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationVideoEventTopicMessageMetadataEvent: Codable {

    /** Type of this event element. */
    public var eventType: String?
    /** Event subtype, if any */
    public var subType: String?

    public init(eventType: String?, subType: String?) {
        self.eventType = eventType
        self.subType = subType
    }


}

