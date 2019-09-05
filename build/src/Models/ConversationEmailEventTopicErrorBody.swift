//
// ConversationEmailEventTopicErrorBody.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationEmailEventTopicErrorBody: Codable {

    public var status: Int?
    public var code: String?
    public var entityId: String?
    public var entityName: String?
    public var message: String?
    public var messageWithParams: String?
    public var messageParams: [String:String]?
    public var contextId: String?
    public var details: [ConversationEmailEventTopicDetail]?
    public var errors: [ConversationEmailEventTopicErrorBody]?

    public init(status: Int?, code: String?, entityId: String?, entityName: String?, message: String?, messageWithParams: String?, messageParams: [String:String]?, contextId: String?, details: [ConversationEmailEventTopicDetail]?, errors: [ConversationEmailEventTopicErrorBody]?) {
        
        self.status = status
        
        self.code = code
        
        self.entityId = entityId
        
        self.entityName = entityName
        
        self.message = message
        
        self.messageWithParams = messageWithParams
        
        self.messageParams = messageParams
        
        self.contextId = contextId
        
        self.details = details
        
        self.errors = errors
        
    }


}

