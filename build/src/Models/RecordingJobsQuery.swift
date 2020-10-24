//
// RecordingJobsQuery.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class RecordingJobsQuery: Codable {

    public enum Action: String, Codable { 
        case delete = "DELETE"
        case export = "EXPORT"
    }
    /** Operation to perform bulk task */
    public var action: Action?
    /** The date when the action will be performed. If the operation will cause the delete date of a recording to be older than the export date, the export date will be adjusted to the delete date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var actionDate: Date?
    /** IntegrationId to Access AWS S3 bucket for bulk recording exports. This field is required and used only for EXPORT action. */
    public var integrationId: String?
    /** Include Screen recordings for export action, default value = true  */
    public var includeScreenRecordings: Bool?
    /** Conversation Query. Note: After the recording is created, it might take up to 48 hours for the recording to be included in the submitted job query. */
    public var conversationQuery: AsyncConversationQuery?

    public init(action: Action?, actionDate: Date?, integrationId: String?, includeScreenRecordings: Bool?, conversationQuery: AsyncConversationQuery?) {
        
        self.action = action
        
        self.actionDate = actionDate
        
        self.integrationId = integrationId
        
        self.includeScreenRecordings = includeScreenRecordings
        
        self.conversationQuery = conversationQuery
        
    }


}

