//
// WebChatConversation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WebChatConversation: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** Chat Member */
    public var member: WebChatMemberInfo?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, member: WebChatMemberInfo?, selfUri: String?) {
        self._id = _id
        self.name = name
        self.member = member
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case member
        case selfUri
    }


}

