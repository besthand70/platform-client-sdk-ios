//
// WfmScheduleTopicWfmScheduleNotification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmScheduleTopicWfmScheduleNotification: Codable {

    public enum Status: String, Codable { 
        case processing = "Processing"
        case complete = "Complete"
        case canceled = "Canceled"
        case error = "Error"
    }
    public enum EventType: String, Codable { 
        case update = "Update"
        case _import = "Import"
        case copy = "Copy"
        case generate = "Generate"
        case reschedule = "Reschedule"
    }
    public var status: Status?
    public var operationId: String?
    public var downloadUrl: String?
    public var percentComplete: Int?
    public var eventType: EventType?

    public init(status: Status?, operationId: String?, downloadUrl: String?, percentComplete: Int?, eventType: EventType?) {
        self.status = status
        self.operationId = operationId
        self.downloadUrl = downloadUrl
        self.percentComplete = percentComplete
        self.eventType = eventType
    }


}

