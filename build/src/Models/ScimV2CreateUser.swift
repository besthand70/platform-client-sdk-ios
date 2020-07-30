//
// ScimV2CreateUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Defines the creation of a SCIM user. */

public class ScimV2CreateUser: Codable {

    /** The list of supported schemas. */
    public var schemas: [String]?
    /** Indicates whether the user&#39;s administrative status is active. */
    public var active: Bool?
    /** The user&#39;s Genesys Cloud email address. Must be unique. */
    public var userName: String?
    /** The display name of the user. */
    public var displayName: String?
    /** The new password for the Genesys Cloud user. Does not return an existing password. */
    public var password: String?
    /** The user&#39;s title. */
    public var title: String?
    /** The list of the user&#39;s phone numbers. */
    public var phoneNumbers: [ScimPhoneNumber]?
    /** The list of the user&#39;s email addresses. */
    public var emails: [ScimEmail]?
    /** The external ID of the user. Set by the provisioning client. \&quot;caseExact\&quot; is set to \&quot;true\&quot;. \&quot;mutability\&quot; is set to \&quot;readWrite\&quot;. */
    public var externalId: String?
    /** The list of groups that the user is a member of. */
    public var groups: [ScimV2GroupReference]?
    /** The list of roles assigned to the user. */
    public var roles: [ScimUserRole]?
    /** The URI of the schema for the enterprise user. */
    public var urnietfparamsscimschemasextensionenterprise20User: ScimV2EnterpriseUser?
    /** The URI of the schema for the Genesys Cloud user. */
    public var urnietfparamsscimschemasextensiongenesyspurecloud20User: ScimUserExtensions?

    public init(schemas: [String]?, active: Bool?, userName: String?, displayName: String?, password: String?, title: String?, phoneNumbers: [ScimPhoneNumber]?, emails: [ScimEmail]?, externalId: String?, groups: [ScimV2GroupReference]?, roles: [ScimUserRole]?, urnietfparamsscimschemasextensionenterprise20User: ScimV2EnterpriseUser?, urnietfparamsscimschemasextensiongenesyspurecloud20User: ScimUserExtensions?) {
        
        self.schemas = schemas
        
        self.active = active
        
        self.userName = userName
        
        self.displayName = displayName
        
        self.password = password
        
        self.title = title
        
        self.phoneNumbers = phoneNumbers
        
        self.emails = emails
        
        self.externalId = externalId
        
        self.groups = groups
        
        self.roles = roles
        
        self.urnietfparamsscimschemasextensionenterprise20User = urnietfparamsscimschemasextensionenterprise20User
        
        self.urnietfparamsscimschemasextensiongenesyspurecloud20User = urnietfparamsscimschemasextensiongenesyspurecloud20User
        
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
        case externalId
        case groups
        case roles
        case urnietfparamsscimschemasextensionenterprise20User = "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User"
        case urnietfparamsscimschemasextensiongenesyspurecloud20User = "urn:ietf:params:scim:schemas:extension:genesys:purecloud:2.0:User"
    }


}

