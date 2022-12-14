//
// ServerDate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ServerDate: Codable {

    /** Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var currentDate: Date?

    public init(currentDate: Date?) {
        self.currentDate = currentDate
    }


}

