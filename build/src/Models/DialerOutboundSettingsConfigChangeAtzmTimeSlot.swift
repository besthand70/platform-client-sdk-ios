//
// DialerOutboundSettingsConfigChangeAtzmTimeSlot.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DialerOutboundSettingsConfigChangeAtzmTimeSlot: Codable {

    public var earliestCallableTime: String?
    public var latestCallableTime: String?

    public init(earliestCallableTime: String?, latestCallableTime: String?) {
        
        self.earliestCallableTime = earliestCallableTime
        
        self.latestCallableTime = latestCallableTime
        
    }


}

