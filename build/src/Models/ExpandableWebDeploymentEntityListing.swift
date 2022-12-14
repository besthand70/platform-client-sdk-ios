//
// ExpandableWebDeploymentEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ExpandableWebDeploymentEntityListing: Codable {

    public var total: Int64?
    public var entities: [ExpandableWebDeployment]?
    public var selfUri: String?

    public init(total: Int64?, entities: [ExpandableWebDeployment]?, selfUri: String?) {
        self.total = total
        self.entities = entities
        self.selfUri = selfUri
    }


}

