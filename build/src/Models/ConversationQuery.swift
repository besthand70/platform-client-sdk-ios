//
// ConversationQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationQuery: Codable {

    public enum Order: String, Codable { 
        case asc = "asc"
        case desc = "desc"
    }
    public enum OrderBy: String, Codable { 
        case conversationstart = "conversationStart"
        case conversationend = "conversationEnd"
        case segmentstart = "segmentStart"
        case segmentend = "segmentEnd"
    }
    /** Specifies the date and time range of data being queried. Results will include conversations that both started on a day touched by the interval AND either started, ended, or any activity during the interval. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss */
    public var interval: String?
    /** Filters that target conversation-level data */
    public var conversationFilters: [ConversationDetailQueryFilter]?
    /** Filters that target individual segments within a conversation */
    public var segmentFilters: [SegmentDetailQueryFilter]?
    /** Filters that target evaluations */
    public var evaluationFilters: [EvaluationDetailQueryFilter]?
    /** Filters that target mediaEndpointStats */
    public var mediaEndpointStatFilters: [MediaEndpointStatDetailQueryFilter]?
    /** Filters that target surveys */
    public var surveyFilters: [SurveyDetailQueryFilter]?
    /** Sort the result set in ascending/descending order. Default is ascending */
    public var order: Order?
    /** Specify which data element within the result set to use for sorting. The options  to use as a basis for sorting the results: conversationStart, segmentStart, and segmentEnd. If not specified, the default is conversationStart */
    public var orderBy: OrderBy?
    /** Include faceted search and aggregate roll-ups describing your search results. This does not function as a filter, but rather, summary data about the data matching your filters */
    public var aggregations: [AnalyticsQueryAggregation]?
    /** Page size and number to control iterating through large result sets. Default page size is 25 */
    public var paging: PagingSpec?

    public init(interval: String?, conversationFilters: [ConversationDetailQueryFilter]?, segmentFilters: [SegmentDetailQueryFilter]?, evaluationFilters: [EvaluationDetailQueryFilter]?, mediaEndpointStatFilters: [MediaEndpointStatDetailQueryFilter]?, surveyFilters: [SurveyDetailQueryFilter]?, order: Order?, orderBy: OrderBy?, aggregations: [AnalyticsQueryAggregation]?, paging: PagingSpec?) {
        
        self.interval = interval
        
        self.conversationFilters = conversationFilters
        
        self.segmentFilters = segmentFilters
        
        self.evaluationFilters = evaluationFilters
        
        self.mediaEndpointStatFilters = mediaEndpointStatFilters
        
        self.surveyFilters = surveyFilters
        
        self.order = order
        
        self.orderBy = orderBy
        
        self.aggregations = aggregations
        
        self.paging = paging
        
    }


}

