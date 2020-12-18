//
// ReportingExportMetadataJobResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ReportingExportMetadataJobResponse: Codable {

    public enum ViewType: String, Codable { 
        case queuePerformanceSummaryView = "QUEUE_PERFORMANCE_SUMMARY_VIEW"
        case queuePerformanceDetailView = "QUEUE_PERFORMANCE_DETAIL_VIEW"
        case interactionSearchView = "INTERACTION_SEARCH_VIEW"
        case agentPerformanceSummaryView = "AGENT_PERFORMANCE_SUMMARY_VIEW"
        case agentPerformanceDetailView = "AGENT_PERFORMANCE_DETAIL_VIEW"
        case agentStatusSummaryView = "AGENT_STATUS_SUMMARY_VIEW"
        case agentStatusDetailView = "AGENT_STATUS_DETAIL_VIEW"
        case agentEvaluationSummaryView = "AGENT_EVALUATION_SUMMARY_VIEW"
        case agentEvaluationDetailView = "AGENT_EVALUATION_DETAIL_VIEW"
        case agentQueueDetailView = "AGENT_QUEUE_DETAIL_VIEW"
        case agentInteractionDetailView = "AGENT_INTERACTION_DETAIL_VIEW"
        case abandonInsightsView = "ABANDON_INSIGHTS_VIEW"
        case skillsPerformanceView = "SKILLS_PERFORMANCE_VIEW"
        case surveyFormPerformanceSummaryView = "SURVEY_FORM_PERFORMANCE_SUMMARY_VIEW"
        case surveyFormPerformanceDetailView = "SURVEY_FORM_PERFORMANCE_DETAIL_VIEW"
        case dnisPerformanceSummaryView = "DNIS_PERFORMANCE_SUMMARY_VIEW"
        case dnisPerformanceDetailView = "DNIS_PERFORMANCE_DETAIL_VIEW"
        case wrapUpPerformanceSummaryView = "WRAP_UP_PERFORMANCE_SUMMARY_VIEW"
        case agentWrapUpPerformanceDetailView = "AGENT_WRAP_UP_PERFORMANCE_DETAIL_VIEW"
        case queueActivitySummaryView = "QUEUE_ACTIVITY_SUMMARY_VIEW"
        case queueActivityDetailView = "QUEUE_ACTIVITY_DETAIL_VIEW"
        case agentQueueActivitySummaryView = "AGENT_QUEUE_ACTIVITY_SUMMARY_VIEW"
        case queueAgentDetailView = "QUEUE_AGENT_DETAIL_VIEW"
        case queueInteractionDetailView = "QUEUE_INTERACTION_DETAIL_VIEW"
        case agentScheduleDetailView = "AGENT_SCHEDULE_DETAIL_VIEW"
        case ivrPerformanceSummaryView = "IVR_PERFORMANCE_SUMMARY_VIEW"
        case ivrPerformanceDetailView = "IVR_PERFORMANCE_DETAIL_VIEW"
        case answerInsightsView = "ANSWER_INSIGHTS_VIEW"
        case handleInsightsView = "HANDLE_INSIGHTS_VIEW"
        case talkInsightsView = "TALK_INSIGHTS_VIEW"
        case holdInsightsView = "HOLD_INSIGHTS_VIEW"
        case acwInsightsView = "ACW_INSIGHTS_VIEW"
        case waitInsightsView = "WAIT_INSIGHTS_VIEW"
        case agentWrapUpPerformanceIntervalDetailView = "AGENT_WRAP_UP_PERFORMANCE_INTERVAL_DETAIL_VIEW"
        case flowOutcomeSummaryView = "FLOW_OUTCOME_SUMMARY_VIEW"
        case flowOutcomePerformanceDetailView = "FLOW_OUTCOME_PERFORMANCE_DETAIL_VIEW"
        case flowOutcomePerformanceIntervalDetailView = "FLOW_OUTCOME_PERFORMANCE_INTERVAL_DETAIL_VIEW"
        case flowDestinationSummaryView = "FLOW_DESTINATION_SUMMARY_VIEW"
        case flowDestinationDetailView = "FLOW_DESTINATION_DETAIL_VIEW"
        case apiUsageView = "API_USAGE_VIEW"
        case scheduledCallbacksView = "SCHEDULED_CALLBACKS_VIEW"
        case contentSearchView = "CONTENT_SEARCH_VIEW"
        case landingPage = "LANDING_PAGE"
        case dashboardSummary = "DASHBOARD_SUMMARY"
        case dashboardDetail = "DASHBOARD_DETAIL"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** The view type of the export metadata */
    public var viewType: ViewType?
    /** The date limitations of the export metadata */
    public var dateLimitations: String?
    /** The list of required filters for the export metadata */
    public var requiredFilters: [String]?
    /** The list of supported filters for the export metadata */
    public var supportedFilters: [String]?
    /** The list of required column ids for the export metadata */
    public var requiredColumnIds: [String]?
    /** The list of dependent column ids for the export metadata */
    public var dependentColumnIds: [String:[String]]?
    /** The list of available column ids for the export metadata */
    public var availableColumnIds: [String]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, viewType: ViewType?, dateLimitations: String?, requiredFilters: [String]?, supportedFilters: [String]?, requiredColumnIds: [String]?, dependentColumnIds: [String:[String]]?, availableColumnIds: [String]?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.viewType = viewType
        
        self.dateLimitations = dateLimitations
        
        self.requiredFilters = requiredFilters
        
        self.supportedFilters = supportedFilters
        
        self.requiredColumnIds = requiredColumnIds
        
        self.dependentColumnIds = dependentColumnIds
        
        self.availableColumnIds = availableColumnIds
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case viewType
        case dateLimitations
        case requiredFilters
        case supportedFilters
        case requiredColumnIds
        case dependentColumnIds
        case availableColumnIds
        case selfUri
    }


}

