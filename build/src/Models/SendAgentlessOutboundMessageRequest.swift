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
    }
    /** The messaging address of the sender of the message. For an SMS messenger type, this must be a currently provisioned sms phone number. */
    public var fromAddress: String?
    /** The messaging address of the recipient of the message. For an SMS messenger type, the phone number address must be in E.164 format. E.g. +13175555555 or +34234234234. */
    public var toAddress: String?
    /** The recipient messaging address messenger type. Currently SMS is the only supported type. */
    public var toAddressMessengerType: ToAddressMessengerType?
    /** The text of the message to send */
    public var textBody: String?

    public init(fromAddress: String?, toAddress: String?, toAddressMessengerType: ToAddressMessengerType?, textBody: String?) {
        
        self.fromAddress = fromAddress
        
        self.toAddress = toAddress
        
        self.toAddressMessengerType = toAddressMessengerType
        
        self.textBody = textBody
        
    }


}

