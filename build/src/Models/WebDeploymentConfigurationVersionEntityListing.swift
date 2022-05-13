//
// WebDeploymentConfigurationVersionEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WebDeploymentConfigurationVersionEntityListing: Codable {

    public var total: Int64?
    public var entities: [WebDeploymentConfigurationVersion]?
    public var selfUri: String?

    public init(total: Int64?, entities: [WebDeploymentConfigurationVersion]?, selfUri: String?) {
        self.total = total
        self.entities = entities
        self.selfUri = selfUri
    }


}

