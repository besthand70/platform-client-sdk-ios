//
// WfmIntradayDataUpdateTopicIntradayScheduleData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmIntradayDataUpdateTopicIntradayScheduleData: Codable {

    public var onQueueTimeSeconds: Int?
    public var scheduledTimeSeconds: Int?

    public init(onQueueTimeSeconds: Int?, scheduledTimeSeconds: Int?) {
        
        self.onQueueTimeSeconds = onQueueTimeSeconds
        
        self.scheduledTimeSeconds = scheduledTimeSeconds
        
    }


}

