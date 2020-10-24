//
// FacebookIntegration.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class FacebookIntegration: Codable {

    public enum CreateStatus: String, Codable { 
        case initiated = "Initiated"
        case completed = "Completed"
        case error = "Error"
    }
    /** A unique Integration Id. */
    public var _id: String?
    /** The name of the Facebook Integration */
    public var name: String?
    /** The App Id from Facebook messenger */
    public var appId: String?
    /** The Page Id from Facebook messenger */
    public var pageId: String?
    /** The status of the Facebook Integration */
    public var status: String?
    /** The recipient reference associated to the Facebook Integration. This recipient is used to associate a flow to an integration */
    public var recipient: DomainEntityRef?
    /** Date this Integration was created. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** Date this Integration was modified. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** User reference that created this Integration */
    public var createdBy: DomainEntityRef?
    /** User reference that last modified this Integration */
    public var modifiedBy: DomainEntityRef?
    /** Version number required for updates. */
    public var version: Int?
    /** Status of asynchronous create operation */
    public var createStatus: CreateStatus?
    /** Error information returned, if createStatus is set to Error */
    public var createError: ErrorBody?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, appId: String?, pageId: String?, status: String?, recipient: DomainEntityRef?, dateCreated: Date?, dateModified: Date?, createdBy: DomainEntityRef?, modifiedBy: DomainEntityRef?, version: Int?, createStatus: CreateStatus?, createError: ErrorBody?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.appId = appId
        
        self.pageId = pageId
        
        self.status = status
        
        self.recipient = recipient
        
        self.dateCreated = dateCreated
        
        self.dateModified = dateModified
        
        self.createdBy = createdBy
        
        self.modifiedBy = modifiedBy
        
        self.version = version
        
        self.createStatus = createStatus
        
        self.createError = createError
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case appId
        case pageId
        case status
        case recipient
        case dateCreated
        case dateModified
        case createdBy
        case modifiedBy
        case version
        case createStatus
        case createError
        case selfUri
    }


}

