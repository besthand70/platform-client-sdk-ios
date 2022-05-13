//
// WhatsAppIntegrationRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WhatsAppIntegrationRequest: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The name of the WhatsApp Integration */
    public var name: String?
    /** Defines the SupportedContent profile configured for an integration */
    public var supportedContent: SupportedContentReference?
    public var messagingSetting: MessagingSettingReference?
    /** The phone number associated to the whatsApp integration */
    public var phoneNumber: String?
    /** The waba(WhatsApp Business Manager) certificate associated to the WhatsApp integration phone number */
    public var wabaCertificate: String?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, supportedContent: SupportedContentReference?, messagingSetting: MessagingSettingReference?, phoneNumber: String?, wabaCertificate: String?, selfUri: String?) {
        self._id = _id
        self.name = name
        self.supportedContent = supportedContent
        self.messagingSetting = messagingSetting
        self.phoneNumber = phoneNumber
        self.wabaCertificate = wabaCertificate
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case supportedContent
        case messagingSetting
        case phoneNumber
        case wabaCertificate
        case selfUri
    }


}

