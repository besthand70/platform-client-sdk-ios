//
// QueueConversationSocialExpressionEventTopicDisconnectReason.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationSocialExpressionEventTopicDisconnectReason: Codable {

    public enum ModelType: String, Codable { 
        case q850 = "q850"
        case sip = "sip"
    }
    /** Disconnect reason protocol type. */
    public var type: ModelType?
    /** Protocol specific reason code. See the Q.850 and SIP specs. */
    public var code: Int?
    /** Human readable English description of the disconnect reason. */
    public var phrase: String?

    public init(type: ModelType?, code: Int?, phrase: String?) {
        self.type = type
        self.code = code
        self.phrase = phrase
    }


}

