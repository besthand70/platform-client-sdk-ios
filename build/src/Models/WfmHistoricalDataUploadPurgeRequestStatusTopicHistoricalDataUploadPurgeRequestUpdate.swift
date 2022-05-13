//
// WfmHistoricalDataUploadPurgeRequestStatusTopicHistoricalDataUploadPurgeRequestUpdate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmHistoricalDataUploadPurgeRequestStatusTopicHistoricalDataUploadPurgeRequestUpdate: Codable {

    public enum Status: String, Codable { 
        case inProgress = "InProgress"
        case success = "Success"
        case failed = "Failed"
    }
    public var status: Status?

    public init(status: Status?) {
        self.status = status
    }


}

