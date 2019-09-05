//
// TrustMemberCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TrustMemberCreate: Codable {

    /** Trustee User or Group Id */
    public var _id: String?
    /** The list of trustor organization roles granting this user or group access. */
    public var roleIds: [String]?

    public init(_id: String?, roleIds: [String]?) {
        
        self._id = _id
        
        self.roleIds = roleIds
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case roleIds
    }


}

