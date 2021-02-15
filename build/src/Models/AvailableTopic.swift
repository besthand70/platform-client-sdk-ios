//
// AvailableTopic.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AvailableTopic: Codable {

    public enum Visibility: String, Codable { 
        case _public = "Public"
        case preview = "Preview"
    }
    public enum Transports: String, Codable { 
        case all = "All"
        case websocket = "Websocket"
        case eventBridge = "EventBridge"
    }
    public var _description: String?
    public var _id: String?
    /** Permissions required to subscribe to the topic */
    public var requiresPermissions: [String]?
    /** True if the subscribing user must belong to the same division as the topic object ID */
    public var requiresDivisionPermissions: Bool?
    /** Whether or not the permissions on this topic are enforced */
    public var enforced: Bool?
    /** Visibility of this topic (Public or Preview) */
    public var visibility: Visibility?
    public var schema: [String:JSON]?
    /** True if the topic user ID is required to match the subscribing user ID */
    public var requiresCurrentUser: Bool?
    /** True if permissions are only required when the topic user ID does not match the subscribing user ID */
    public var requiresCurrentUserOrPermission: Bool?
    /** Transports that support events for the topic */
    public var transports: [Transports]?
    public var publicApiTemplateUriPaths: [String]?

    public init(_description: String?, _id: String?, requiresPermissions: [String]?, requiresDivisionPermissions: Bool?, enforced: Bool?, visibility: Visibility?, schema: [String:JSON]?, requiresCurrentUser: Bool?, requiresCurrentUserOrPermission: Bool?, transports: [Transports]?, publicApiTemplateUriPaths: [String]?) {
        
        self._description = _description
        
        self._id = _id
        
        self.requiresPermissions = requiresPermissions
        
        self.requiresDivisionPermissions = requiresDivisionPermissions
        
        self.enforced = enforced
        
        self.visibility = visibility
        
        self.schema = schema
        
        self.requiresCurrentUser = requiresCurrentUser
        
        self.requiresCurrentUserOrPermission = requiresCurrentUserOrPermission
        
        self.transports = transports
        
        self.publicApiTemplateUriPaths = publicApiTemplateUriPaths
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case _id = "id"
        case requiresPermissions
        case requiresDivisionPermissions
        case enforced
        case visibility
        case schema
        case requiresCurrentUser
        case requiresCurrentUserOrPermission
        case transports
        case publicApiTemplateUriPaths
    }


}

