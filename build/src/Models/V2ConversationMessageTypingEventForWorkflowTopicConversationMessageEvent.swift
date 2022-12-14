//
// V2ConversationMessageTypingEventForWorkflowTopicConversationMessageEvent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class V2ConversationMessageTypingEventForWorkflowTopicConversationMessageEvent: Codable {

    public enum EventType: String, Codable { 
        case coBrowse = "CoBrowse"
        case typing = "Typing"
    }
    public var eventType: EventType?
    public var coBrowse: V2ConversationMessageTypingEventForWorkflowTopicConversationEventCoBrowse?
    public var typing: V2ConversationMessageTypingEventForWorkflowTopicConversationEventTyping?

    public init(eventType: EventType?, coBrowse: V2ConversationMessageTypingEventForWorkflowTopicConversationEventCoBrowse?, typing: V2ConversationMessageTypingEventForWorkflowTopicConversationEventTyping?) {
        self.eventType = eventType
        self.coBrowse = coBrowse
        self.typing = typing
    }


}

