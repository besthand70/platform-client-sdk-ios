//
// AnalyticsUserDetailsAsyncQueryResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AnalyticsUserDetailsAsyncQueryResponse: Codable {

    public var userDetails: [AnalyticsUserDetail]?
    /** Optional cursor to indicate where to resume the results */
    public var cursor: String?
    /** Data available up to at least this datetime. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var dataAvailabilityDate: Date?

    public init(userDetails: [AnalyticsUserDetail]?, cursor: String?, dataAvailabilityDate: Date?) {
        
        self.userDetails = userDetails
        
        self.cursor = cursor
        
        self.dataAvailabilityDate = dataAvailabilityDate
        
    }


}

