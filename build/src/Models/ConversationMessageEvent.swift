//
// ConversationMessageEvent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Message event element.  Examples include: system messages, typing indicators, cobrowse offerings. */

public class ConversationMessageEvent: Codable {

    public enum EventType: String, Codable { 
        case coBrowse = "CoBrowse"
        case typing = "Typing"
    }
    /** Type of this event element */
    public var eventType: EventType?
    /** CoBrowse event. */
    public var coBrowse: ConversationEventCoBrowse?
    /** Typing event. */
    public var typing: ConversationEventTyping?

    public init(eventType: EventType?, coBrowse: ConversationEventCoBrowse?, typing: ConversationEventTyping?) {
        
        self.eventType = eventType
        
        self.coBrowse = coBrowse
        
        self.typing = typing
        
    }


}

