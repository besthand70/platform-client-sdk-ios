//
// ArchitectDependencyTrackingBuildNotificationClient.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The client who initiated the change. */

public class ArchitectDependencyTrackingBuildNotificationClient: Codable {

    /** The ID of the client. */
    public var _id: String?
    /** The name of the client, if available. */
    public var name: String?

    public init(_id: String?, name: String?) {
        self._id = _id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
    }


}

