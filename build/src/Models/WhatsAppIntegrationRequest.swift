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
    /** The phone number associated to the whatsApp integration */
    public var phoneNumber: String?
    /** The waba(WhatsApp Business Manager) certificate associated to the WhatsApp integration phone number */
    public var wabaCertificate: String?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, phoneNumber: String?, wabaCertificate: String?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.phoneNumber = phoneNumber
        
        self.wabaCertificate = wabaCertificate
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case phoneNumber
        case wabaCertificate
        case selfUri
    }


}
