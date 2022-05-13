//
// QueueConversationEventTopicObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The number of peer participants from the perspective of the participant in the conference. */

public class QueueConversationEventTopicObject: Codable {


    public var additionalProperties: [String:NULL_SCHEMA_ERR] = [:]

    public subscript(key: String) -> NULL_SCHEMA_ERR? {
        get {
            if let value = additionalProperties[key] {
                return value
            }
            return nil
        }

        set {
            additionalProperties[key] = newValue
        }
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeMap(additionalProperties)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        var nonAdditionalPropertyKeys = Set<String>()
        additionalProperties = try container.decodeMap(NULL_SCHEMA_ERR.self, excludedKeys: nonAdditionalPropertyKeys)
    }



}

