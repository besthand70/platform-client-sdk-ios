//
// AuditQueryRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AuditQueryRequest: Codable {

    public enum ServiceName: String, Codable { 
        case architect = "Architect"
        case contactCenter = "ContactCenter"
        case contentManagement = "ContentManagement"
        case peoplePermissions = "PeoplePermissions"
        case presence = "Presence"
        case quality = "Quality"
        case languageUnderstanding = "LanguageUnderstanding"
        case topicsDefinitions = "TopicsDefinitions"
        case predictiveEngagement = "PredictiveEngagement"
        case workforceManagement = "WorkforceManagement"
        case triggers = "Triggers"
        case responseManagement = "ResponseManagement"
        case groups = "Groups"
        case telephony = "Telephony"
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

