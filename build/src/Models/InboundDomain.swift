//
// InboundDomain.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class InboundDomain: Codable {

    public enum MxRecordStatus: String, Codable { 
        case valid = "VALID"
        case invalid = "INVALID"
        case notAvailable = "NOT_AVAILABLE"
    }
    /** Unique Id of the domain such as: example.com */
    public var _id: String?
    public var name: String?
    /** Mx Record Status */
    public var mxRecordStatus: MxRecordStatus?
    /** Indicates if this a PureCloud sub-domain.  If true, then the appropriate DNS records are created for sending/receiving email. */
    public var subDomain: Bool?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, mxRecordStatus: MxRecordStatus?, subDomain: Bool?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.mxRecordStatus = mxRecordStatus
        
        self.subDomain = subDomain
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case mxRecordStatus
        case subDomain
        case selfUri
    }


}

