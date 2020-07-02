//
// FlowAggregationQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class FlowAggregationQuery: Codable {

    public enum GroupBy: String, Codable { 
        case addressfrom = "addressFrom"
        case addressto = "addressTo"
        case agentscore = "agentScore"
        case ani = "ani"
        case conversationid = "conversationId"
        case convertedfrom = "convertedFrom"
        case convertedto = "convertedTo"
        case direction = "direction"
        case disconnecttype = "disconnectType"
        case divisionid = "divisionId"
        case dnis = "dnis"
        case edgeid = "edgeId"
        case endinglanguage = "endingLanguage"
        case entryreason = "entryReason"
        case entrytype = "entryType"
        case exitreason = "exitReason"
        case externalcontactid = "externalContactId"
        case externalmediacount = "externalMediaCount"
        case externalorganizationid = "externalOrganizationId"
        case flaggedreason = "flaggedReason"
        case flowid = "flowId"
        case flowname = "flowName"
        case flowouttype = "flowOutType"
        case flowoutcome = "flowOutcome"
        case flowoutcomeid = "flowOutcomeId"
        case flowoutcomevalue = "flowOutcomeValue"
        case flowtype = "flowType"
        case flowversion = "flowVersion"
        case groupid = "groupId"
        case interactiontype = "interactionType"
        case journeyactionid = "journeyActionId"
        case journeyactionmapid = "journeyActionMapId"
        case journeyactionmapversion = "journeyActionMapVersion"
        case journeycustomerid = "journeyCustomerId"
        case journeycustomeridtype = "journeyCustomerIdType"
        case journeycustomersessionid = "journeyCustomerSessionId"
        case journeycustomersessionidtype = "journeyCustomerSessionIdType"
        case mediacount = "mediaCount"
        case mediatype = "mediaType"
        case messagetype = "messageType"
        case originatingdirection = "originatingDirection"
        case outboundcampaignid = "outboundCampaignId"
        case outboundcontactid = "outboundContactId"
        case outboundcontactlistid = "outboundContactListId"
        case participantname = "participantName"
        case peerid = "peerId"
        case provider = "provider"
        case purpose = "purpose"
        case queueid = "queueId"
        case remote = "remote"
        case requestedlanguageid = "requestedLanguageId"
        case requestedroutingskillid = "requestedRoutingSkillId"
        case roomid = "roomId"
        case routingpriority = "routingPriority"
        case scoredagentid = "scoredAgentId"
        case sessiondnis = "sessionDnis"
        case sessionid = "sessionId"
        case startinglanguage = "startingLanguage"
        case stationid = "stationId"
        case teamid = "teamId"
        case transfertargetaddress = "transferTargetAddress"
        case transfertargetname = "transferTargetName"
        case transfertype = "transferType"
        case userid = "userId"
        case wrapupcode = "wrapUpCode"
    }
    public enum Metrics: String, Codable { 
        case nflow = "nFlow"
        case nflowoutcome = "nFlowOutcome"
        case nflowoutcomefailed = "nFlowOutcomeFailed"
        case oflow = "oFlow"
        case tflow = "tFlow"
        case tflowdisconnect = "tFlowDisconnect"
        case tflowexit = "tFlowExit"
        case tflowoutcome = "tFlowOutcome"
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
    public var filter: FlowAggregateQueryFilter?
    /** Behaves like a SQL SELECT clause. Enables retrieving only named metrics. If omitted, all metrics that are available will be returned (like SELECT *). */
    public var metrics: [Metrics]?
    /** Flattens any multivalued dimensions used in response groups (e.g. [&#39;a&#39;,&#39;b&#39;,&#39;c&#39;]-&gt;&#39;a,b,c&#39;) */
    public var flattenMultivaluedDimensions: Bool?
    /** Custom derived metric views */
    public var views: [FlowAggregationView]?
    /** Dimension to use as the alternative timestamp for data in the aggregate.  Choosing \&quot;eventTime\&quot; uses the actual time of the data event. */
    public var alternateTimeDimension: AlternateTimeDimension?

    public init(interval: String?, granularity: String?, timeZone: String?, groupBy: [GroupBy]?, filter: FlowAggregateQueryFilter?, metrics: [Metrics]?, flattenMultivaluedDimensions: Bool?, views: [FlowAggregationView]?, alternateTimeDimension: AlternateTimeDimension?) {
        
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

