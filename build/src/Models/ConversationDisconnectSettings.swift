//
// ConversationDisconnectSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationDisconnectSettings: Codable {

    public enum ModelType: String, Codable { 
        case send = "Send"
        case readOnly = "ReadOnly"
    }
    /** whether or not conversation disconnect setting is enabled */
    public var enabled: Bool?
    /** Conversation disconnect type */
    public var type: ModelType?

    public init(enabled: Bool?, type: ModelType?) {
        self.enabled = enabled
        self.type = type
    }


}

