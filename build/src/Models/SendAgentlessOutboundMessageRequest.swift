//
// SendAgentlessOutboundMessageRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SendAgentlessOutboundMessageRequest: Codable {

    public enum ToAddressMessengerType: String, Codable { 
        case sms = "sms"
        case facebook = "facebook"
        case twitter = "twitter"
        case line = "line"
        case whatsapp = "whatsapp"
        case webmessaging = "webmessaging"
        case _open = "open"
    }
    /** The messaging address of the sender of the message. For an SMS messenger type, this must be a currently provisioned SMS phone number. For a WhatsApp messenger type use the provisioned WhatsApp integration’s ID */
    public var fromAddress: String?
    /** The messaging address of the recipient of the message. For an SMS messenger type, the phone number address must be in E.164 format. E.g. +13175555555 or +34234234234. */
    public var toAddress: String?
    /** The recipient messaging address messenger type. Currently SMS is the only one supported. WhatsApp will be supported in a future release. */
    public var toAddressMessengerType: ToAddressMessengerType?
    /** The text of the message to send. This field is required in the case of SMS messenger type */
    public var textBody: String?
    /** The messaging template to use in the case of WhatsApp messenger type. This field is required when using WhatsApp messenger type */
    public var messagingTemplate: MessagingTemplateRequest?

    public init(fromAddress: String?, toAddress: String?, toAddressMessengerType: ToAddressMessengerType?, textBody: String?, messagingTemplate: MessagingTemplateRequest?) {
        
        self.fromAddress = fromAddress
        
        self.toAddress = toAddress
        
        self.toAddressMessengerType = toAddressMessengerType
        
        self.textBody = textBody
        
        self.messagingTemplate = messagingTemplate
        
    }


}

