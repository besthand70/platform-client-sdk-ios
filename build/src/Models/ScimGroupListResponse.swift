//
// ScimGroupListResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** SCIM Group List Response */

public class ScimGroupListResponse: Codable {

    /** Total Results */
    public var totalResults: Int64?
    /** Start index */
    public var startIndex: Int64?
    /** Items per Page */
    public var itemsPerPage: Int64?
    /** Resources */
    public var resources: [ScimV2Group]?
    /** schemas supported */
    public var schemas: [String]?

    public init(totalResults: Int64?, startIndex: Int64?, itemsPerPage: Int64?, resources: [ScimV2Group]?, schemas: [String]?) {
        
        self.totalResults = totalResults
        
        self.startIndex = startIndex
        
        self.itemsPerPage = itemsPerPage
        
        self.resources = resources
        
        self.schemas = schemas
        
    }

    public enum CodingKeys: String, CodingKey { 
        case totalResults
        case startIndex
        case itemsPerPage
        case resources = "Resources"
        case schemas
    }


}

