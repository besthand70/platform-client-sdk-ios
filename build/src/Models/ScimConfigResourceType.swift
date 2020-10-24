//
// ScimConfigResourceType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Defines a SCIM resource. */

public class ScimConfigResourceType: Codable {

    /** The ID of the SCIM resource. Set by the service provider. \&quot;caseExact\&quot; is set to \&quot;true\&quot;. \&quot;mutability\&quot; is set to \&quot;readOnly\&quot;. \&quot;returned\&quot; is set to \&quot;always\&quot;. */
    public var _id: String?
    /** The list of supported schemas. */
    public var schemas: [String]?
    /** The name of the resource type. */
    public var name: String?
    /** The description of the resource type. */
    public var _description: String?
    /** The URI of the primary or base schema for the resource type. */
    public var schema: String?
    /** The list of schema extensions for the resource type. */
    public var schemaExtensions: [ScimConfigResourceTypeSchemaExtension]?
    /** The HTTP-addressable endpoint of the resource type. Appears after the base URL. */
    public var endpoint: String?
    /** The metadata of the SCIM resource. Only \&quot;location\&quot; and \&quot;resourceType\&quot; are set for \&quot;ResourceType\&quot; resources. */
    public var meta: ScimMetadata?

    public init(_id: String?, schemas: [String]?, name: String?, _description: String?, schema: String?, schemaExtensions: [ScimConfigResourceTypeSchemaExtension]?, endpoint: String?, meta: ScimMetadata?) {
        
        self._id = _id
        
        self.schemas = schemas
        
        self.name = name
        
        self._description = _description
        
        self.schema = schema
        
        self.schemaExtensions = schemaExtensions
        
        self.endpoint = endpoint
        
        self.meta = meta
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case schemas
        case name
        case _description = "description"
        case schema
        case schemaExtensions
        case endpoint
        case meta
    }


}

