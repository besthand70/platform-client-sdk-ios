//
// DialerContactId.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DialerContactId: Codable {

    public var _id: String?
    public var contactListId: String?

    public init(_id: String?, contactListId: String?) {
        self._id = _id
        self.contactListId = contactListId
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case contactListId
    }


}

