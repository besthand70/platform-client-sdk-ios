//
// ConversationEventTopicDisconnectReason.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationEventTopicDisconnectReason: Codable {

    public enum ModelType: String, Codable { 
        case q850 = "Q_850"
        case sip = "SIP"
    }
    public var type: ModelType?
    public var code: Int?
    public var phrase: String?

    public init(type: ModelType?, code: Int?, phrase: String?) {
        
        self.type = type
        
        self.code = code
        
        self.phrase = phrase
        
    }


}

