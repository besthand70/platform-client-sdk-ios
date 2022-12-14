//
// BuAsyncAgentSchedulesQueryResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BuAsyncAgentSchedulesQueryResponse: Codable {

    public enum Status: String, Codable { 
        case processing = "Processing"
        case complete = "Complete"
        case canceled = "Canceled"
        case error = "Error"
    }
    /** The status of the operation */
    public var status: Status?
    /** The ID for the operation */
    public var operationId: String?
    /** The result of the operation.  Null unless status == Complete */
    public var result: BuAgentSchedulesQueryResponse?
    /** Percent progress for the operation */
    public var progress: Int?
    /** The URL from which to download the result if it is too large to pass directly */
    public var downloadUrl: String?

    public init(status: Status?, operationId: String?, result: BuAgentSchedulesQueryResponse?, progress: Int?, downloadUrl: String?) {
        self.status = status
        self.operationId = operationId
        self.result = result
        self.progress = progress
        self.downloadUrl = downloadUrl
    }


}

