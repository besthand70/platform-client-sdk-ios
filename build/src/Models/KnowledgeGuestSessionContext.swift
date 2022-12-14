//
// KnowledgeGuestSessionContext.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KnowledgeGuestSessionContext: Codable {

    /** The context id associated with the session. */
    public var _id: String?
    /** The list of knowledge context values associated with the session. */
    public var values: [Entity]?

    public init(_id: String?, values: [Entity]?) {
        self._id = _id
        self.values = values
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case values
    }


}

