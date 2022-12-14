//
// ComparisonPeriod.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ComparisonPeriod: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    /** Key Performance Indicator optimised during the comparison period. */
    public var kpi: String?
    /** Start date of the comparison period. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateStarted: Date?
    /** End date of the comparison period. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateEnded: Date?
    /** KPI results for each metric */
    public var kpiResults: [KpiResult]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, kpi: String?, dateStarted: Date?, dateEnded: Date?, kpiResults: [KpiResult]?, selfUri: String?) {
        self._id = _id
        self.kpi = kpi
        self.dateStarted = dateStarted
        self.dateEnded = dateEnded
        self.kpiResults = kpiResults
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case kpi
        case dateStarted
        case dateEnded
        case kpiResults
        case selfUri
    }


}

