//
// AvailableTimeOffResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The list of date ranges with available time off values and the current waitlist per granularity. */

public class AvailableTimeOffResponse: Codable {

    public var values: [AvailableTimeOffRange]?

    public init(values: [AvailableTimeOffRange]?) {
        self.values = values
    }


}

