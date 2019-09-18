//
// UserAggregationQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class UserAggregationQuery: Codable {

    public enum GroupBy: String, Codable { 
        case organizationpresenceid = "organizationPresenceId"
        case routingstatus = "routingStatus"
        case systempresence = "systemPresence"
        case userid = "userId"
    }
    public enum Metrics: String, Codable { 
        case tagentroutingstatus = "tAgentRoutingStatus"
        case torganizationpresence = "tOrganizationPresence"
        case tsystempresence = "tSystemPresence"
    }
    /** Behaves like one clause in a SQL WHERE. Specifies the date and time range of data being queried. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss */
    public var interval: String?
    /** Granularity aggregates metrics into subpartitions within the time interval specified. The default granularity is the same duration as the interval. Periods are represented as an ISO-8601 string. For example: P1D or P1DT12H */
    public var granularity: String?
    /** Sets the time zone for the query interval, defaults to UTC. Time zones are represented as a string of the zone name as found in the IANA time zone database. For example: UTC, Etc/UTC, or Europe/London */
    public var timeZone: String?
    /** Behaves like a SQL GROUPBY. Allows for multiple levels of grouping as a list of dimensions. Partitions resulting aggregate computations into distinct named subgroups rather than across the entire result set as if it were one group. */
    public var groupBy: [GroupBy]?
    /** Behaves like a SQL WHERE clause. This is ANDed with the interval parameter. Expresses boolean logical predicates as well as dimensional filters */
    public var filter: UserAggregateQueryFilter?
    /** Behaves like a SQL SELECT clause. Enables retrieving only named metrics. If omitted, all metrics that are available will be returned (like SELECT *). */
    public var metrics: [Metrics]?
    /** Flattens any multivalued dimensions used in response groups (e.g. [&#39;a&#39;,&#39;b&#39;,&#39;c&#39;]-&gt;&#39;a,b,c&#39;) */
    public var flattenMultivaluedDimensions: Bool?
    /** Custom derived metric views */
    public var views: [UserAggregationView]?

    public init(interval: String?, granularity: String?, timeZone: String?, groupBy: [GroupBy]?, filter: UserAggregateQueryFilter?, metrics: [Metrics]?, flattenMultivaluedDimensions: Bool?, views: [UserAggregationView]?) {
        
        self.interval = interval
        
        self.granularity = granularity
        
        self.timeZone = timeZone
        
        self.groupBy = groupBy
        
        self.filter = filter
        
        self.metrics = metrics
        
        self.flattenMultivaluedDimensions = flattenMultivaluedDimensions
        
        self.views = views
        
    }


}

