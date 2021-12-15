//
// QueueConversationVideoEventTopicErrorDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Detailed information about an error response. */

public class QueueConversationVideoEventTopicErrorDetails: Codable {

    /** The HTTP status code for this message (400, 401, 403, 404, 500, etc. */
    public var status: Int?
    /** A code unique to this error. */
    public var code: String?
    /** Friendly description of this error. */
    public var message: String?
    /** This is the same as message except it uses template fields for variable replacement. For instance: &#39;User {username} was not found&#39; */
    public var messageWithParams: String?
    /** Used in conjunction with messageWithParams. These are the template parameters. For instance: UserParam.key = &#39;username&#39;, UserParam.value = &#39;john.doe&#39; */
    public var messageParams: [String:String]?
    /** The correlation Id or context Id for this message. If left blank the Public API will look at the HTTP response header &#39;ININ-Correlation-Id&#39; instead. */
    public var contextId: String?
    public var uri: String?

    public init(status: Int?, code: String?, message: String?, messageWithParams: String?, messageParams: [String:String]?, contextId: String?, uri: String?) {
        
        self.status = status
        
        self.code = code
        
        self.message = message
        
        self.messageWithParams = messageWithParams
        
        self.messageParams = messageParams
        
        self.contextId = contextId
        
        self.uri = uri
        
    }


}

