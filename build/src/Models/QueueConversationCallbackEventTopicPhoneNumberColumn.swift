//
// QueueConversationCallbackEventTopicPhoneNumberColumn.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationCallbackEventTopicPhoneNumberColumn: Codable {

    public var columnName: String?
    public var type: String?
    public var additionalProperties: JSON?

    public init(columnName: String?, type: String?, additionalProperties: JSON?) {
        
        self.columnName = columnName
        
        self.type = type
        
        self.additionalProperties = additionalProperties
        
    }


}

