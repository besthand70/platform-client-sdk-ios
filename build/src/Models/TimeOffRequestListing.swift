//
// TimeOffRequestListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TimeOffRequestListing: Codable {

    /** List of time off requests */
    public var entities: [TimeOffRequest]?

    public init(entities: [TimeOffRequest]?) {
        self.entities = entities
    }


}

