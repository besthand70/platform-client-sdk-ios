//
// AuditQueryExecutionStatusResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AuditQueryExecutionStatusResponse: Codable {

    public enum State: String, Codable { 
        case queued = "Queued"
        case running = "Running"
        case succeeded = "Succeeded"
        case failed = "Failed"
        case cancelled = "Cancelled"
    }
    public enum ServiceName: String, Codable { 
        case contactCenter = "ContactCenter"
        case contentManagement = "ContentManagement"
        case peoplePermissions = "PeoplePermissions"
        case quality = "Quality"
        case languageUnderstanding = "LanguageUnderstanding"
        case topicsDefinitions = "TopicsDefinitions"
    }
    /** Id of the audit query execution request. */
    public var _id: String?
    /** Status of the audit query execution request. */
    public var state: State?
    /** Start date and time of the audit query execution. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var startDate: Date?
    /** Interval for the audit query. Intervals are represented as an ISO-8601 string. For example: YYYY-MM-DDThh:mm:ss/YYYY-MM-DDThh:mm:ss */
    public var interval: String?
    /** Service name for the audit query. */
    public var serviceName: ServiceName?
    /** Filters for the audit query. */
    public var filters: [AuditQueryFilter]?

    public init(_id: String?, state: State?, startDate: Date?, interval: String?, serviceName: ServiceName?, filters: [AuditQueryFilter]?) {
        
        self._id = _id
        
        self.state = state
        
        self.startDate = startDate
        
        self.interval = interval
        
        self.serviceName = serviceName
        
        self.filters = filters
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case state
        case startDate
        case interval
        case serviceName
        case filters
    }


}

