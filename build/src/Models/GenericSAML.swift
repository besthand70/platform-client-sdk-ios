//
// GenericSAML.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class GenericSAML: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    public var logoImageData: String?
    public var endpointCompression: Bool?
    public var relyingPartyIdentifier: String?
    public var certificate: String?
    public var issuerURI: String?
    public var ssoTargetURI: String?
    public var disabled: Bool?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, logoImageData: String?, endpointCompression: Bool?, relyingPartyIdentifier: String?, certificate: String?, issuerURI: String?, ssoTargetURI: String?, disabled: Bool?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.logoImageData = logoImageData
        
        self.endpointCompression = endpointCompression
        
        self.relyingPartyIdentifier = relyingPartyIdentifier
        
        self.certificate = certificate
        
        self.issuerURI = issuerURI
        
        self.ssoTargetURI = ssoTargetURI
        
        self.disabled = disabled
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case logoImageData
        case endpointCompression
        case relyingPartyIdentifier
        case certificate
        case issuerURI
        case ssoTargetURI
        case disabled
        case selfUri
    }


}

