//
// BuCopyScheduleRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BuCopyScheduleRequest: Codable {

    /** The description for the new schedule */
    public var _description: String?
    /** The start weekDate for the new copy of the schedule. Dates are represented as an ISO-8601 string. For example: yyyy-MM-dd */
    public var weekDate: Date?

    public init(_description: String?, weekDate: Date?) {
        self._description = _description
        self.weekDate = weekDate
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case weekDate
    }


}

