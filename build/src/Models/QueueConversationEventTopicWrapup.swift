//
// QueueConversationEventTopicWrapup.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationEventTopicWrapup: Codable {

    public var code: String?
    public var notes: String?
    public var tags: [String]?
    public var durationSeconds: Int?
    public var endTime: Date?
    public var additionalProperties: JSON?

    public init(code: String?, notes: String?, tags: [String]?, durationSeconds: Int?, endTime: Date?, additionalProperties: JSON?) {
        
        self.code = code
        
        self.notes = notes
        
        self.tags = tags
        
        self.durationSeconds = durationSeconds
        
        self.endTime = endTime
        
        self.additionalProperties = additionalProperties
        
    }


}

