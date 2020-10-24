//
// Group.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class Group: Codable {

    public enum State: String, Codable { 
        case active = "active"
        case inactive = "inactive"
        case deleted = "deleted"
    }
    public enum ModelType: String, Codable { 
        case official = "official"
        case social = "social"
    }
    public enum Visibility: String, Codable { 
        case _public = "public"
        case owners = "owners"
        case members = "members"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The group name. */
    public var name: String?
    public var _description: String?
    /** Last modified date/time. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** Number of members. */
    public var memberCount: Int64?
    /** Active, inactive, or deleted state. */
    public var state: State?
    /** Current version for this resource. */
    public var version: Int?
    /** Type of group. */
    public var type: ModelType?
    public var images: [UserImage]?
    public var addresses: [GroupContact]?
    /** Are membership rules visible to the person requesting to view the group */
    public var rulesVisible: Bool?
    /** Who can view this group */
    public var visibility: Visibility?
    /** Owners of the group */
    public var owners: [User]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, _description: String?, dateModified: Date?, memberCount: Int64?, state: State?, version: Int?, type: ModelType?, images: [UserImage]?, addresses: [GroupContact]?, rulesVisible: Bool?, visibility: Visibility?, owners: [User]?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self._description = _description
        
        self.dateModified = dateModified
        
        self.memberCount = memberCount
        
        self.state = state
        
        self.version = version
        
        self.type = type
        
        self.images = images
        
        self.addresses = addresses
        
        self.rulesVisible = rulesVisible
        
        self.visibility = visibility
        
        self.owners = owners
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _description = "description"
        case dateModified
        case memberCount
        case state
        case version
        case type
        case images
        case addresses
        case rulesVisible
        case visibility
        case owners
        case selfUri
    }


}

