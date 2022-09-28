//
// ConversationAppSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Conversation settings that handles chats within the messenger */

public class ConversationAppSettings: Codable {

    public enum AutoStartType: String, Codable { 
        case standard = "Standard"
        case automatic = "Automatic"
    }
    /** The toggle to enable or disable typing indicator for messenger */
    public var showAgentTypingIndicator: Bool?
    /** The toggle to enable or disable typing indicator for messenger */
    public var showUserTypingIndicator: Bool?
    /** Deprecated. The auto start type for the messenger conversation */
    public var autoStartType: AutoStartType?
    /** The auto start for the messenger conversation */
    public var autoStart: AutoStart?
    /** The markdown for the messenger app */
    public var markdown: Markdown?
    /** The conversation disconnect settings for the messenger app */
    public var conversationDisconnect: ConversationDisconnectSettings?
    /** The humanize conversations settings for the messenger app */
    public var humanize: Humanize?

    public init(showAgentTypingIndicator: Bool?, showUserTypingIndicator: Bool?, autoStartType: AutoStartType?, autoStart: AutoStart?, markdown: Markdown?, conversationDisconnect: ConversationDisconnectSettings?, humanize: Humanize?) {
        self.showAgentTypingIndicator = showAgentTypingIndicator
        self.showUserTypingIndicator = showUserTypingIndicator
        self.autoStartType = autoStartType
        self.autoStart = autoStart
        self.markdown = markdown
        self.conversationDisconnect = conversationDisconnect
        self.humanize = humanize
    }


}

