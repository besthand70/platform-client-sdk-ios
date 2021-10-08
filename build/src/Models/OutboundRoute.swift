//
// OutboundRoute.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class OutboundRoute: Codable {

    public enum State: String, Codable { 
        case active = "active"
        case inactive = "inactive"
        case deleted = "deleted"
    }
    public enum Distribution: String, Codable { 
        case sequential = "SEQUENTIAL"
        case random = "RANDOM"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The name of the entity. */
    public var name: String?
    /** The division to which this entity belongs. */
    public var division: Division?
    /** The resource&#39;s description. */
    public var _description: String?
    /** The current version of the resource. */
    public var version: Int?
    /** The date the resource was created. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** The date of the last modification to the resource. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** The ID of the user that last modified the resource. */
    public var modifiedBy: String?
    /** The ID of the user that created the resource. */
    public var createdBy: String?
    /** Indicates if the resource is active, inactive, or deleted. */
    public var state: State?
    /** The application that last modified the resource. */
    public var modifiedByApp: String?
    /** The application that created the resource. */
    public var createdByApp: String?
    /** The site associated to the outbound route. */
    public var classificationTypes: [String]?
    public var enabled: Bool?
    public var distribution: Distribution?
    /** Trunk base settings of trunkType \&quot;EXTERNAL\&quot;.  This base must also be set on an edge logical interface for correct routing. */
    public var externalTrunkBases: [DomainEntityRef]?
    /** The site associated to the outbound route. */
    public var site: Site?
    /** Is this outbound route being managed remotely. */
    public var managed: Bool?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, division: Division?, _description: String?, version: Int?, dateCreated: Date?, dateModified: Date?, modifiedBy: String?, createdBy: String?, state: State?, modifiedByApp: String?, createdByApp: String?, classificationTypes: [String]?, enabled: Bool?, distribution: Distribution?, externalTrunkBases: [DomainEntityRef]?, site: Site?, managed: Bool?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.division = division
        
        self._description = _description
        
        self.version = version
        
        self.dateCreated = dateCreated
        
        self.dateModified = dateModified
        
        self.modifiedBy = modifiedBy
        
        self.createdBy = createdBy
        
        self.state = state
        
        self.modifiedByApp = modifiedByApp
        
        self.createdByApp = createdByApp
        
        self.classificationTypes = classificationTypes
        
        self.enabled = enabled
        
        self.distribution = distribution
        
        self.externalTrunkBases = externalTrunkBases
        
        self.site = site
        
        self.managed = managed
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case division
        case _description = "description"
        case version
        case dateCreated
        case dateModified
        case modifiedBy
        case createdBy
        case state
        case modifiedByApp
        case createdByApp
        case classificationTypes
        case enabled
        case distribution
        case externalTrunkBases
        case site
        case managed
        case selfUri
    }


}

