//
// DocumentAudit.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DocumentAudit: Codable {

    public enum Level: String, Codable { 
        case user = "USER"
        case system = "SYSTEM"
    }
    public enum Status: String, Codable { 
        case success = "SUCCESS"
        case failure = "FAILURE"
        case warning = "WARNING"
    }
    public enum ActionContext: String, Codable { 
        case create = "CREATE"
        case read = "READ"
        case update = "UPDATE"
        case delete = "DELETE"
        case download = "DOWNLOAD"
        case view = "VIEW"
        case upload = "UPLOAD"
        case save = "SAVE"
        case move = "MOVE"
        case copy = "COPY"
        case add = "ADD"
        case remove = "REMOVE"
        case receive = "RECEIVE"
        case convert = "CONVERT"
        case fax = "FAX"
        case createCoverpage = "CREATE_COVERPAGE"
        case userAdd = "USER_ADD"
        case userRemove = "USER_REMOVE"
        case memberAdd = "MEMBER_ADD"
        case memberRemove = "MEMBER_REMOVE"
        case memberUpdate = "MEMBER_UPDATE"
        case tagAdd = "TAG_ADD"
        case tagRemove = "TAG_REMOVE"
        case tagUpdate = "TAG_UPDATE"
        case attributeAdd = "ATTRIBUTE_ADD"
        case attributeRemove = "ATTRIBUTE_REMOVE"
        case attributeUpdate = "ATTRIBUTE_UPDATE"
        case attributeGroupInstanceAdd = "ATTRIBUTE_GROUP_INSTANCE_ADD"
        case attributeGroupInstanceRemove = "ATTRIBUTE_GROUP_INSTANCE_REMOVE"
        case attributeGroupInstanceUpdate = "ATTRIBUTE_GROUP_INSTANCE_UPDATE"
        case indexSave = "INDEX_SAVE"
        case indexDelete = "INDEX_DELETE"
        case indexCreate = "INDEX_CREATE"
        case fileSave = "FILE_SAVE"
        case fileDelete = "FILE_DELETE"
        case fileRead = "FILE_READ"
        case thumbnailCreate = "THUMBNAIL_CREATE"
        case textExtract = "TEXT_EXTRACT"
        case shareAdd = "SHARE_ADD"
        case shareRemove = "SHARE_REMOVE"
        case versionCreate = "VERSION_CREATE"
    }
    public enum Action: String, Codable { 
        case create = "CREATE"
        case read = "READ"
        case update = "UPDATE"
        case delete = "DELETE"
        case download = "DOWNLOAD"
        case view = "VIEW"
        case upload = "UPLOAD"
        case save = "SAVE"
        case move = "MOVE"
        case copy = "COPY"
        case add = "ADD"
        case remove = "REMOVE"
        case receive = "RECEIVE"
        case convert = "CONVERT"
        case fax = "FAX"
        case createCoverpage = "CREATE_COVERPAGE"
        case userAdd = "USER_ADD"
        case userRemove = "USER_REMOVE"
        case memberAdd = "MEMBER_ADD"
        case memberRemove = "MEMBER_REMOVE"
        case memberUpdate = "MEMBER_UPDATE"
        case tagAdd = "TAG_ADD"
        case tagRemove = "TAG_REMOVE"
        case tagUpdate = "TAG_UPDATE"
        case attributeAdd = "ATTRIBUTE_ADD"
        case attributeRemove = "ATTRIBUTE_REMOVE"
        case attributeUpdate = "ATTRIBUTE_UPDATE"
        case attributeGroupInstanceAdd = "ATTRIBUTE_GROUP_INSTANCE_ADD"
        case attributeGroupInstanceRemove = "ATTRIBUTE_GROUP_INSTANCE_REMOVE"
        case attributeGroupInstanceUpdate = "ATTRIBUTE_GROUP_INSTANCE_UPDATE"
        case indexSave = "INDEX_SAVE"
        case indexDelete = "INDEX_DELETE"
        case indexCreate = "INDEX_CREATE"
        case fileSave = "FILE_SAVE"
        case fileDelete = "FILE_DELETE"
        case fileRead = "FILE_READ"
        case thumbnailCreate = "THUMBNAIL_CREATE"
        case textExtract = "TEXT_EXTRACT"
        case shareAdd = "SHARE_ADD"
        case shareRemove = "SHARE_REMOVE"
        case versionCreate = "VERSION_CREATE"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    public var user: DomainEntityRef?
    public var workspace: DomainEntityRef?
    public var transactionId: String?
    public var transactionInitiator: Bool?
    public var application: String?
    public var serviceName: String?
    public var level: Level?
    /** Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var timestamp: Date?
    public var status: Status?
    public var actionContext: ActionContext?
    public var action: Action?
    public var entity: AuditEntityReference?
    public var changes: [AuditChange]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, user: DomainEntityRef?, workspace: DomainEntityRef?, transactionId: String?, transactionInitiator: Bool?, application: String?, serviceName: String?, level: Level?, timestamp: Date?, status: Status?, actionContext: ActionContext?, action: Action?, entity: AuditEntityReference?, changes: [AuditChange]?, selfUri: String?) {
        self._id = _id
        self.name = name
        self.user = user
        self.workspace = workspace
        self.transactionId = transactionId
        self.transactionInitiator = transactionInitiator
        self.application = application
        self.serviceName = serviceName
        self.level = level
        self.timestamp = timestamp
        self.status = status
        self.actionContext = actionContext
        self.action = action
        self.entity = entity
        self.changes = changes
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case user
        case workspace
        case transactionId
        case transactionInitiator
        case application
        case serviceName
        case level
        case timestamp
        case status
        case actionContext
        case action
        case entity
        case changes
        case selfUri
    }


}

