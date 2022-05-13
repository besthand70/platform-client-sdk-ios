//
// EdgeLine.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EdgeLine: Codable {

    public enum State: String, Codable { 
        case active = "active"
        case inactive = "inactive"
        case deleted = "deleted"
    }
    public enum LineType: String, Codable { 
        case tie = "TIE"
        case network = "NETWORK"
        case trunk = "TRUNK"
        case station = "STATION"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The name of the entity. */
    public var name: String?
    /** The division to which this entity belongs. */
    public var division: Division?
    /** The resource's description. */
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
    public var schema: DomainEntityRef?
    public var properties: [String:JSON]?
    public var edge: Edge?
    public var edgeGroup: EdgeGroup?
    public var lineType: LineType?
    public var endpoint: Endpoint?
    public var ipAddress: String?
    public var logicalInterfaceId: String?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, division: Division?, _description: String?, version: Int?, dateCreated: Date?, dateModified: Date?, modifiedBy: String?, createdBy: String?, state: State?, modifiedByApp: String?, createdByApp: String?, schema: DomainEntityRef?, properties: [String:JSON]?, edge: Edge?, edgeGroup: EdgeGroup?, lineType: LineType?, endpoint: Endpoint?, ipAddress: String?, logicalInterfaceId: String?, selfUri: String?) {
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
        self.schema = schema
        self.properties = properties
        self.edge = edge
        self.edgeGroup = edgeGroup
        self.lineType = lineType
        self.endpoint = endpoint
        self.ipAddress = ipAddress
        self.logicalInterfaceId = logicalInterfaceId
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
        case schema
        case properties
        case edge
        case edgeGroup
        case lineType
        case endpoint
        case ipAddress
        case logicalInterfaceId
        case selfUri
    }


}

