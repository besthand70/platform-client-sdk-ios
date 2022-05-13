//
// V2ConversationMessageTypingEventForWorkflowTopicConversationReason.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class V2ConversationMessageTypingEventForWorkflowTopicConversationReason: Codable {

    public enum Code: String, Codable { 
        case messageExpired = "MessageExpired"
        case rateLimited = "RateLimited"
        case messageNotAllowed = "MessageNotAllowed"
        case generalError = "GeneralError"
        case unsupportedMessage = "UnsupportedMessage"
        case unknownMessage = "UnknownMessage"
        case invalidMessageStructure = "InvalidMessageStructure"
        case invalidDestination = "InvalidDestination"
        case serverError = "ServerError"
        case mediaTypeNotAllowed = "MediaTypeNotAllowed"
        case invalidMediaContentLength = "InvalidMediaContentLength"
        case recipientOptedOut = "RecipientOptedOut"
    }
    public var code: Code?
    public var message: String?

    public init(code: Code?, message: String?) {
        self.code = code
        self.message = message
    }


}

