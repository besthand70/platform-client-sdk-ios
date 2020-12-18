//
// JourneyAggregationQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class JourneyAggregationQuery: Codable {

    public enum GroupBy: String, Codable { 
        case journeyactionid = "journeyActionId"
        case journeyactionmapid = "journeyActionMapId"
        case journeyactionmapversion = "journeyActionMapVersion"
        case journeyactionmediatype = "journeyActionMediaType"
        case journeyactiontemplateid = "journeyActionTemplateId"
        case journeycustomerid = "journeyCustomerId"
        case journeycustomeridtype = "journeyCustomerIdType"
        case journeydevicecategory = "journeyDeviceCategory"
        case journeydevicetype = "journeyDeviceType"
        case journeyoutcomeid = "journeyOutcomeId"
        case journeysegmentid = "journeySegmentId"
        case journeysegmentscope = "journeySegmentScope"
        case journeysessionsegmentid = "journeySessionSegmentId"
        case journeysessiontype = "journeySessionType"
        case touchpointactionmapid = "touchpointActionMapId"
    }
    public enum Metrics: String, Codable { 
        case njourneyoutcomesachieved = "nJourneyOutcomesAchieved"
        case njourneyoutcomesattributed = "nJourneyOutcomesAttributed"
        case njourneysegmentsassigned = "nJourneySegmentsAssigned"
        case njourneysessions = "nJourneySessions"
        case nwebactionsabandoned = "nWebActionsAbandoned"
        case nwebactionsaccepted = "nWebActionsAccepted"
        case nwebactionsengaged = "nWebActionsEngaged"
        case nwebactionserrored = "nWebActionsErrored"
        case nwebactionsignored = "nWebActionsIgnored"
        case nwebactionsoffered = "nWebActionsOffered"
        case nwebactionsqualified = "nWebActionsQualified"
        case nwebactionsqualifiedoutsideschedule = "nWebActionsQualifiedOutsideSchedule"
        case nwebactionsrejected = "nWebActionsRejected"
        case nwebactionsstarted = "nWebActionsStarted"
        case nwebactionstimedout = "nWebActionsTimedout"
        case nwebactionsfrequencycapreached = "nWebActionsFrequencyCapReached"
    }
    public enum AlternateTimeDimension: String, Codable { 
        case eventtime = "eventTime"
    }
    /** Behaves like one clause in a SQL WHERE. Specifies the date and time range of data being queried. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss */
    public var interval: String?
    /** Granularity aggregates metrics into subpartitions within the time interval specified. The default granularity is the same duration as the interval. Periods are represented as an ISO-8601 string. For example: P1D or P1DT12H */
    public var granularity: String?
    /** Time zone context used to calculate response intervals (this allows resolving DST changes). The interval offset is used even when timeZone is specified. Default is UTC. Time zones are represented as a string of the zone name as found in the IANA time zone database. For example: UTC, Etc/UTC, or Europe/London */
    public var timeZone: String?
    /** Behaves like a SQL GROUPBY. Allows for multiple levels of grouping as a list of dimensions. Partitions resulting aggregate computations into distinct named subgroups rather than across the entire result set as if it were one group. */
    public var groupBy: [GroupBy]?
    /** Behaves like a SQL WHERE clause. This is ANDed with the interval parameter. Expresses boolean logical predicates as well as dimensional filters */
    public var filter: JourneyAggregateQueryFilter?
    /** Behaves like a SQL SELECT clause. Only named metrics will be retrieved. */
    public var metrics: [Metrics]?
    /** Flattens any multivalued dimensions used in response groups (e.g. [&#39;a&#39;,&#39;b&#39;,&#39;c&#39;]-&gt;&#39;a,b,c&#39;) */
    public var flattenMultivaluedDimensions: Bool?
    /** Custom derived metric views */
    public var views: [JourneyAggregationView]?
    /** Dimension to use as the alternative timestamp for data in the aggregate.  Choosing \&quot;eventTime\&quot; uses the actual time of the data event. */
    public var alternateTimeDimension: AlternateTimeDimension?

    public init(interval: String?, granularity: String?, timeZone: String?, groupBy: [GroupBy]?, filter: JourneyAggregateQueryFilter?, metrics: [Metrics]?, flattenMultivaluedDimensions: Bool?, views: [JourneyAggregationView]?, alternateTimeDimension: AlternateTimeDimension?) {
        
        self.interval = interval
        
        self.granularity = granularity
        
        self.timeZone = timeZone
        
        self.groupBy = groupBy
        
        self.filter = filter
        
        self.metrics = metrics
        
        self.flattenMultivaluedDimensions = flattenMultivaluedDimensions
        
        self.views = views
        
        self.alternateTimeDimension = alternateTimeDimension
        
    }


}

