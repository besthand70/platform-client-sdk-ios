//
// SmsConfig.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SmsConfig: Codable {

    /** The Contact List column specifying the message to send to the contact. */
    public var messageColumn: String?
    /** The Contact List column specifying the phone number to send a message to. */
    public var phoneColumn: String?
    /** A reference to the SMS Phone Number that will be used as the sender of a message. */
    public var senderSmsPhoneNumber: SmsPhoneNumberRef?

    public init(messageColumn: String?, phoneColumn: String?, senderSmsPhoneNumber: SmsPhoneNumberRef?) {
        
        self.messageColumn = messageColumn
        
        self.phoneColumn = phoneColumn
        
        self.senderSmsPhoneNumber = senderSmsPhoneNumber
        
    }


}

