//
// AuditQueryRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AuditQueryRequest: Codable {

    public enum ServiceName: String, Codable { 
        case analyticsReporting = "AnalyticsReporting"
        case architect = "Architect"
        case coaching = "Coaching"
        case contactCenter = "ContactCenter"
        case contentManagement = "ContentManagement"
        case datatables = "Datatables"
        case directory = "Directory"
        case dynamicSchema = "DynamicSchema"
        case gamification = "Gamification"
        case groups = "Groups"
        case integrations = "Integrations"
        case knowledge = "Knowledge"
        case languageUnderstanding = "LanguageUnderstanding"
        case learning = "Learning"
        case limits = "Limits"
        case outbound = "Outbound"
        case peoplePermissions = "PeoplePermissions"
        case employeePerformance = "EmployeePerformance"
        case predictiveEngagement = "PredictiveEngagement"
        case presence = "Presence"
        case quality = "Quality"
        case responseManagement = "ResponseManagement"
        case routing = "Routing"
        case speechAndTextAnalytics = "SpeechAndTextAnalytics"
        case telephony = "Telephony"
        case topicsDefinitions = "TopicsDefinitions"
        case triggers = "Triggers"
        case processAutomation = "ProcessAutomation"
        case webDeployments = "WebDeployments"
        case webhooks = "Webhooks"
        case workforceManagement = "WorkforceManagement"
        case messaging = "Messaging"
        case supportability = "Supportability"
        case callback = "Callback"
        case workitems = "Workitems"
    }
    /** Date and time range of data to query. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss */
    public var interval: String?
    /** Name of the service to query audits for. */
    public var serviceName: ServiceName?
    /** Additional filters for the query. */
    public var filters: [AuditQueryFilter]?
    /** Sort parameter for the query. */
    public var sort: [AuditQuerySort]?

    public init(interval: String?, serviceName: ServiceName?, filters: [AuditQueryFilter]?, sort: [AuditQuerySort]?) {
        
        self.interval = interval
        
        self.serviceName = serviceName
        
        self.filters = filters
        
        self.sort = sort
        
    }


}

