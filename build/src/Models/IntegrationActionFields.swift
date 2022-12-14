//
// IntegrationActionFields.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class IntegrationActionFields: Codable {

    /** Reference to the Integration Action to be used when integrationAction type is qualified */
    public var integrationAction: IntegrationAction?
    /** Collection of Request Mappings to use */
    public var requestMappings: [RequestMapping]?

    public init(integrationAction: IntegrationAction?, requestMappings: [RequestMapping]?) {
        self.integrationAction = integrationAction
        self.requestMappings = requestMappings
    }


}

