//
// WfmUpdateAgentDetailsTopicWfmUpdateAgentDetailsComplete.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmUpdateAgentDetailsTopicWfmUpdateAgentDetailsComplete: Codable {

    public enum Status: String, Codable { 
        case processing = "Processing"
        case complete = "Complete"
        case canceled = "Canceled"
        case error = "Error"
    }
    public var status: Status?

    public init(status: Status?) {
        
        self.status = status
        
    }


}

