//
// QueueConversationCobrowseEventTopicDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationCobrowseEventTopicDetail: Codable {

    public var errorCode: String?
    public var fieldName: String?
    public var entityId: String?
    public var entityName: String?

    public init(errorCode: String?, fieldName: String?, entityId: String?, entityName: String?) {
        self.errorCode = errorCode
        self.fieldName = fieldName
        self.entityId = entityId
        self.entityName = entityName
    }


}

