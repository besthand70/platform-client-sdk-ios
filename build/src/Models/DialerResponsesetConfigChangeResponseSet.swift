//
// DialerResponsesetConfigChangeResponseSet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DialerResponsesetConfigChangeResponseSet: Codable {

    /** Map of disposition identifiers to reactions. For example: {\"disposition.classification.callable.person\": {\"reactionType\": \"transfer\"}} */
    public var responses: [String:DialerResponsesetConfigChangeReaction]?
    /** When beep detection is enabled, answering machine detection will wait for the beep before transferring the call */
    public var beepDetectionEnabled: Bool?
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The UI-visible name of the object */
    public var name: String?
    /** Creation time of the entity */
    public var dateCreated: Date?
    /** Last modified time of the entity */
    public var dateModified: Date?
    /** Required for updates, must match the version number of the most recent update */
    public var version: Int?

    public init(responses: [String:DialerResponsesetConfigChangeReaction]?, beepDetectionEnabled: Bool?, _id: String?, name: String?, dateCreated: Date?, dateModified: Date?, version: Int?) {
        self.responses = responses
        self.beepDetectionEnabled = beepDetectionEnabled
        self._id = _id
        self.name = name
        self.dateCreated = dateCreated
        self.dateModified = dateModified
        self.version = version
    }

    public enum CodingKeys: String, CodingKey { 
        case responses
        case beepDetectionEnabled
        case _id = "id"
        case name
        case dateCreated
        case dateModified
        case version
    }


}

