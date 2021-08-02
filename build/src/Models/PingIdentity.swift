//
// PingIdentity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PingIdentity: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    public var disabled: Bool?
    public var issuerURI: String?
    public var ssoTargetURI: String?
    public var sloURI: String?
    public var sloBinding: String?
    public var certificate: String?
    public var certificates: [String]?
    public var relyingPartyIdentifier: String?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, disabled: Bool?, issuerURI: String?, ssoTargetURI: String?, sloURI: String?, sloBinding: String?, certificate: String?, certificates: [String]?, relyingPartyIdentifier: String?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.disabled = disabled
        
        self.issuerURI = issuerURI
        
        self.ssoTargetURI = ssoTargetURI
        
        self.sloURI = sloURI
        
        self.sloBinding = sloBinding
        
        self.certificate = certificate
        
        self.certificates = certificates
        
        self.relyingPartyIdentifier = relyingPartyIdentifier
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case disabled
        case issuerURI
        case ssoTargetURI
        case sloURI
        case sloBinding
        case certificate
        case certificates
        case relyingPartyIdentifier
        case selfUri
    }


}

