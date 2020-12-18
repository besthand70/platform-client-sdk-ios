//
// ReportingExportJobRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ReportingExportJobRequest: Codable {

    public enum ExportFormat: String, Codable { 
        case csv = "CSV"
        case pdf = "PDF"
    }
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
    public enum CsvDelimiter: String, Codable { 
        case semicolon = "SEMICOLON"
        case comma = "COMMA"
    }
    /** The user supplied name of the export request */
    public var name: String?
    /** The requested timezone of the exported data. Time zones are represented as a string of the zone name as found in the IANA time zone database. For example: UTC, Etc/UTC, or Europe/London */
    public var timeZone: String?
    /** The requested format of the exported data */
    public var exportFormat: ExportFormat?
    /** The time period used to limit the the exported data. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss */
    public var interval: String?
    /** The Period of the request in which to break down the intervals. Periods are represented as an ISO-8601 string. For example: P1D or P1DT12H */
    public var period: String?
    /** The type of view export job to be created */
    public var viewType: ViewType?
    /** Filters to apply to create the view */
    public var filter: ViewFilter?
    /** Indicates if the request has been marked as read */
    public var read: Bool?
    /** The locale use for localization of the exported data, i.e. en-us, es-mx   */
    public var locale: String?
    /** Indicates if durations are formatted in hh:mm:ss format instead of ms */
    public var hasFormatDurations: Bool?
    /** Indicates if filters will be split in aggregate detail exports */
    public var hasSplitFilters: Bool?
    /** Excludes empty rows from the exports */
    public var excludeEmptyRows: Bool?
    /** Indicates if media type will be split in aggregate detail exports */
    public var hasSplitByMedia: Bool?
    /** Indicates if summary row needs to be present in exports */
    public var hasSummaryRow: Bool?
    /** The user supplied csv delimiter string value either of type &#39;comma&#39; or &#39;semicolon&#39; permitted for the export request */
    public var csvDelimiter: CsvDelimiter?
    /** The list of ordered selected columns from the export view by the user */
    public var selectedColumns: [SelectedColumns]?
    /** Indicates if custom participant attributes will be exported */
    public var hasCustomParticipantAttributes: Bool?
    /** The list of email recipients for the exports */
    public var recipientEmails: [String]?

    public init(name: String?, timeZone: String?, exportFormat: ExportFormat?, interval: String?, period: String?, viewType: ViewType?, filter: ViewFilter?, read: Bool?, locale: String?, hasFormatDurations: Bool?, hasSplitFilters: Bool?, excludeEmptyRows: Bool?, hasSplitByMedia: Bool?, hasSummaryRow: Bool?, csvDelimiter: CsvDelimiter?, selectedColumns: [SelectedColumns]?, hasCustomParticipantAttributes: Bool?, recipientEmails: [String]?) {
        
        self.name = name
        
        self.timeZone = timeZone
        
        self.exportFormat = exportFormat
        
        self.interval = interval
        
        self.period = period
        
        self.viewType = viewType
        
        self.filter = filter
        
        self.read = read
        
        self.locale = locale
        
        self.hasFormatDurations = hasFormatDurations
        
        self.hasSplitFilters = hasSplitFilters
        
        self.excludeEmptyRows = excludeEmptyRows
        
        self.hasSplitByMedia = hasSplitByMedia
        
        self.hasSummaryRow = hasSummaryRow
        
        self.csvDelimiter = csvDelimiter
        
        self.selectedColumns = selectedColumns
        
        self.hasCustomParticipantAttributes = hasCustomParticipantAttributes
        
        self.recipientEmails = recipientEmails
        
    }


}

