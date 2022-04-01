//
// V2ConversationMessageTypingEventForWorkflowTopicConversationContentQuickReply.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class V2ConversationMessageTypingEventForWorkflowTopicConversationContentQuickReply: Codable {

    public enum Action: String, Codable { 
        case message = "Message"
    }
    public var text: String?
    public var payload: String?
    public var image: String?
    public var action: Action?

    public init(text: String?, payload: String?, image: String?, action: Action?) {
        
        self.text = text
        
        self.payload = payload
        
        self.image = image
        
        self.action = action
        
    }


}

