//
// ScimV2CreateUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Represents a SCIM V2 Create User */

public class ScimV2CreateUser: Codable {

    /** The list of supported schemas. */
    public var schemas: [String]?
    /** Indicates whether the user&#39;s administrative status is active. */
    public var active: Bool?
    /** The user&#39;s PureCloud email address. Must be unique. */
    public var userName: String?
    /** The display name for the user. */
    public var displayName: String?
    /** A new password for a PureCloud user. Does not return an existing password. */
    public var password: String?
    /** The user&#39;s title. */
    public var title: String?
    /** A list of the user&#39;s phone numbers. */
    public var phoneNumbers: [ScimPhoneNumber]?
    /** A list of the user&#39;s email addresses. */
    public var emails: [ScimEmail]?
    /** A list of the user&#39;s photos. */
    public var photos: [Photo]?
    /** The external ID of the user. Set by the provisioning client. caseExact is set to true. mutability is set to readWrite. */
    public var externalId: String?
    /** A list of groups that the user is a member of. */
    public var groups: [ScimV2GroupReference]?
    /** A list of roles assigned to the user. */
    public var roles: [String]?
    public var urnietfparamsscimschemasextensionenterprise20User: ScimV2EnterpriseUser?

    public init(schemas: [String]?, active: Bool?, userName: String?, displayName: String?, password: String?, title: String?, phoneNumbers: [ScimPhoneNumber]?, emails: [ScimEmail]?, photos: [Photo]?, externalId: String?, groups: [ScimV2GroupReference]?, roles: [String]?, urnietfparamsscimschemasextensionenterprise20User: ScimV2EnterpriseUser?) {
        
        self.schemas = schemas
        
        self.active = active
        
        self.userName = userName
        
        self.displayName = displayName
        
        self.password = password
        
        self.title = title
        
        self.phoneNumbers = phoneNumbers
        
        self.emails = emails
        
        self.photos = photos
        
        self.externalId = externalId
        
        self.groups = groups
        
        self.roles = roles
        
        self.urnietfparamsscimschemasextensionenterprise20User = urnietfparamsscimschemasextensionenterprise20User
        
    }

    public enum CodingKeys: String, CodingKey { 
        case schemas
        case active
        case userName
        case displayName
        case password
        case title
        case phoneNumbers
        case emails
        case photos
        case externalId
        case groups
        case roles
        case urnietfparamsscimschemasextensionenterprise20User = "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"
    }


}

