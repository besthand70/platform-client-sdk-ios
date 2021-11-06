//
// ConversationMessageContent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Message content element. */

public class ConversationMessageContent: Codable {

    public enum ContentType: String, Codable { 
        case attachment = "Attachment"
        case location = "Location"
        case story = "Story"
        case quickReply = "QuickReply"
        case notification = "Notification"
        case buttonResponse = "ButtonResponse"
        case genericTemplate = "GenericTemplate"
    }
    /** Type of this content element. If contentType = \&quot;Attachment\&quot; only one item is allowed. */
    public var contentType: ContentType?
    /** Location content. */
    public var location: ConversationContentLocation?
    /** Ephemeral story content. */
    public var story: ConversationContentStory?
    /** Attachment content. */
    public var attachment: ConversationContentAttachment?
    /** Quick reply content. */
    public var quickReply: ConversationContentQuickReply?
    /** Template notification content. */
    public var template: ConversationContentNotificationTemplate?
    /** Button response content. */
    public var buttonResponse: ConversationContentButtonResponse?
    /** Generic Template Object */
    public var generic: ConversationContentGeneric?

    public init(contentType: ContentType?, location: ConversationContentLocation?, story: ConversationContentStory?, attachment: ConversationContentAttachment?, quickReply: ConversationContentQuickReply?, template: ConversationContentNotificationTemplate?, buttonResponse: ConversationContentButtonResponse?, generic: ConversationContentGeneric?) {
        
        self.contentType = contentType
        
        self.location = location
        
        self.story = story
        
        self.attachment = attachment
        
        self.quickReply = quickReply
        
        self.template = template
        
        self.buttonResponse = buttonResponse
        
        self.generic = generic
        
    }


}

