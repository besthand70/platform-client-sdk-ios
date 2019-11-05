//
// ScimV2User.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** SCIM V2 User */

public class ScimV2User: Codable {

    /** The ID of the SCIM resource. Set by the service provider. \&quot;caseExact\&quot; is set to \&quot;true\&quot;. \&quot;Mutability\&quot; is set to \&quot;readOnly\&quot;. \&quot;Returned\&quot; is set to \&quot;always\&quot;. */
    public var _id: String?
    /** The list of supported schemas. */
    public var schemas: [String]?
    /** Indicates whether the user&#39;s administrative status is active. */
    public var active: Bool?
    /** The user&#39;s PureCloud email address. Must be unique. */
    public var userName: String?
    /** The display name of the user. */
    public var displayName: String?
    /** The new password for the PureCloud user. Does not return an existing password. */
    public var password: String?
    /** The user&#39;s title. */
    public var title: String?
    /** The list of the user&#39;s phone numbers. */
    public var phoneNumbers: [ScimPhoneNumber]?
    /** The list of the user&#39;s email addresses. */
    public var emails: [ScimEmail]?
    /** The list of the user&#39;s photos. */
    public var photos: [Photo]?
    /** The external ID of the user. Set by the provisioning client. \&quot;caseExact\&quot; is set to \&quot;true\&quot;. \&quot;mutability\&quot; is set to \&quot;readWrite\&quot;. */
    public var externalId: String?
    /** The list of groups that the user is a member of. */
    public var groups: [ScimV2GroupReference]?
    /** The list of roles assigned to the user. */
    public var roles: [String]?
    /** SCIM enterprise user attributes */
    public var urnietfparamsscimschemasextensionenterprise20User: ScimV2EnterpriseUser?
    /** Resource SCIM meta */
    public var meta: ScimMetadata?

    public init(_id: String?, schemas: [String]?, active: Bool?, userName: String?, displayName: String?, password: String?, title: String?, phoneNumbers: [ScimPhoneNumber]?, emails: [ScimEmail]?, photos: [Photo]?, externalId: String?, groups: [ScimV2GroupReference]?, roles: [String]?, urnietfparamsscimschemasextensionenterprise20User: ScimV2EnterpriseUser?, meta: ScimMetadata?) {
        
        self._id = _id
        
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
        
        self.meta = meta
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
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
        case meta
    }


}

