//
// TrustorAuditQueryRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TrustorAuditQueryRequest: Codable {

    /** Limit returned audits to this trustor organizationId. */
    public var trustorOrganizationId: String?
    /** Limit returned audits to these trustee userIds. */
    public var trusteeUserIds: [String]?
    /** Starting date/time for the audit search. ISO-8601 formatted date-time, UTC. */
    public var startDate: Date?
    /** Ending date/time for the audit search. ISO-8601 formatted date-time, UTC. */
    public var endDate: Date?
    /** Word or phrase to look for in audit bodies. */
    public var queryPhrase: String?
    /** Facet information to be returned with the query results. */
    public var facets: [Facet]?
    /** Additional custom filters to be applied to the query. */
    public var filters: [Filter]?

    public init(trustorOrganizationId: String?, trusteeUserIds: [String]?, startDate: Date?, endDate: Date?, queryPhrase: String?, facets: [Facet]?, filters: [Filter]?) {
        self.trustorOrganizationId = trustorOrganizationId
        self.trusteeUserIds = trusteeUserIds
        self.startDate = startDate
        self.endDate = endDate
        self.queryPhrase = queryPhrase
        self.facets = facets
        self.filters = filters
    }


}

