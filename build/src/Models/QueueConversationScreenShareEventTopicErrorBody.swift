//
// QueueConversationScreenShareEventTopicErrorBody.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationScreenShareEventTopicErrorBody: Codable {

    public var message: String?
    public var code: String?
    public var status: Int?
    public var entityId: String?
    public var entityName: String?
    public var messageWithParams: String?
    public var messageParams: [String:String]?
    public var contextId: String?
    public var details: [QueueConversationScreenShareEventTopicDetail]?
    public var errors: [QueueConversationScreenShareEventTopicErrorBody]?

    public init(message: String?, code: String?, status: Int?, entityId: String?, entityName: String?, messageWithParams: String?, messageParams: [String:String]?, contextId: String?, details: [QueueConversationScreenShareEventTopicDetail]?, errors: [QueueConversationScreenShareEventTopicErrorBody]?) {
        self.message = message
        self.code = code
        self.status = status
        self.entityId = entityId
        self.entityName = entityName
        self.messageWithParams = messageWithParams
        self.messageParams = messageParams
        self.contextId = contextId
        self.details = details
        self.errors = errors
    }


}

