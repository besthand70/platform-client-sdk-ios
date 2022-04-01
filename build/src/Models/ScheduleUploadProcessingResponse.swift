//
// ScheduleUploadProcessingResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ScheduleUploadProcessingResponse: Codable {

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
    public var result: BuScheduleMetadata?

    public init(status: Status?, operationId: String?, result: BuScheduleMetadata?) {
        
        self.status = status
        
        self.operationId = operationId
        
        self.result = result
        
    }


}

