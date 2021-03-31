//
// MessageContent.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Message content element */

public class MessageContent: Codable {

    public enum ContentType: String, Codable { 
        case attachment = "Attachment"
        case location = "Location"
        case quickReply = "QuickReply"
        case buttonResponse = "ButtonResponse"
        case notification = "Notification"
        case genericTemplate = "GenericTemplate"
        case listTemplate = "ListTemplate"
        case postback = "Postback"
        case reactions = "Reactions"
        case mention = "Mention"
    }
    /** Type of this content element. If contentType = \&quot;Attachment\&quot; only one item is allowed. */
    public var contentType: ContentType?
    /** Location object */
    public var location: ContentLocation?
    /** Attachment object */
    public var attachment: ContentAttachment?
    /** Quick reply object */
    public var quickReply: ContentQuickReply?
    /** Button response object */
    public var buttonResponse: ContentButtonResponse?
    /** Generic content object */
    public var generic: ContentGeneric?
    /** List content object */
    public var list: ContentList?
    /** Template notification object */
    public var template: ContentNotificationTemplate?
    /** A list of reactions */
    public var reactions: [ContentReaction]?
    /** This is used to identify who the message is sent to, as well as who it was sent from. This information is channel specific - depends on capabilities to describe party by the platform */
    public var mention: MessagingRecipient?
    /** The postback object result of a user clicking in a button */
    public var postback: ContentPostback?

    public init(contentType: ContentType?, location: ContentLocation?, attachment: ContentAttachment?, quickReply: ContentQuickReply?, buttonResponse: ContentButtonResponse?, generic: ContentGeneric?, list: ContentList?, template: ContentNotificationTemplate?, reactions: [ContentReaction]?, mention: MessagingRecipient?, postback: ContentPostback?) {
        
        self.contentType = contentType
        
        self.location = location
        
        self.attachment = attachment
        
        self.quickReply = quickReply
        
        self.buttonResponse = buttonResponse
        
        self.generic = generic
        
        self.list = list
        
        self.template = template
        
        self.reactions = reactions
        
        self.mention = mention
        
        self.postback = postback
        
    }


}

