//
// ArchitectDependencyTrackingBuildNotificationUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The user who initiated the change. */

public class ArchitectDependencyTrackingBuildNotificationUser: Codable {

    /** The ID of the user. */
    public var _id: String?
    /** The name of the user, if available. */
    public var name: String?
    public var homeOrg: ArchitectDependencyTrackingBuildNotificationHomeOrganization?

    public init(_id: String?, name: String?, homeOrg: ArchitectDependencyTrackingBuildNotificationHomeOrganization?) {
        
        self._id = _id
        
        self.name = name
        
        self.homeOrg = homeOrg
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case homeOrg
    }


}

