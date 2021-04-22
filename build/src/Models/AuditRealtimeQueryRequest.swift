//
// AuditRealtimeQueryRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AuditRealtimeQueryRequest: Codable {

    public enum ServiceName: String, Codable { 
        case architect = "Architect"
        case contactCenter = "ContactCenter"
        case contentManagement = "ContentManagement"
        case groups = "Groups"
        case integrations = "Integrations"
        case languageUnderstanding = "LanguageUnderstanding"
        case limits = "Limits"
        case outbound = "Outbound"
        case peoplePermissions = "PeoplePermissions"
        case predictiveEngagement = "PredictiveEngagement"
        case presence = "Presence"
        case quality = "Quality"
        case responseManagement = "ResponseManagement"
        case routing = "Routing"
        case speechAndTextAnalytics = "SpeechAndTextAnalytics"
        case telephony = "Telephony"
        case topicsDefinitions = "TopicsDefinitions"
        case triggers = "Triggers"
        case workforceManagement = "WorkforceManagement"
    }
    /** Date and time range of data to query. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss */
    public var interval: String?
    /** Name of the service to query audits for. */
    public var serviceName: ServiceName?
    /** Additional filters for the query. */
    public var filters: [AuditQueryFilter]?
    /** Sort parameter for the query. */
    public var sort: [AuditQuerySort]?
    /** Page number */
    public var pageNumber: Int?
    /** Page size */
    public var pageSize: Int?

    public init(interval: String?, serviceName: ServiceName?, filters: [AuditQueryFilter]?, sort: [AuditQuerySort]?, pageNumber: Int?, pageSize: Int?) {
        
        self.interval = interval
        
        self.serviceName = serviceName
        
        self.filters = filters
        
        self.sort = sort
        
        self.pageNumber = pageNumber
        
        self.pageSize = pageSize
        
    }


}

