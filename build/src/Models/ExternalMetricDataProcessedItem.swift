//
// ExternalMetricDataProcessedItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ExternalMetricDataProcessedItem: Codable {

    /** The user ID. Must provide either userId or userEmail, but not both. */
    public var userId: String?
    /** The user main email used in user's GenesysCloud account. Must provide either userId or userEmail, but not both. */
    public var userEmail: String?
    /** The ID of the external metric definition */
    public var metricId: String?
    /** The date of the metric data. Dates are represented as an ISO-8601 string. For example: yyyy-MM-dd */
    public var dateOccurred: Date?
    /** The value of the metric data. When value is null, the metric data will be deleted. */
    public var value: Double?
    /** The number of data points. The default value is 1. */
    public var count: Int?

    public init(userId: String?, userEmail: String?, metricId: String?, dateOccurred: Date?, value: Double?, count: Int?) {
        self.userId = userId
        self.userEmail = userEmail
        self.metricId = metricId
        self.dateOccurred = dateOccurred
        self.value = value
        self.count = count
    }


}

