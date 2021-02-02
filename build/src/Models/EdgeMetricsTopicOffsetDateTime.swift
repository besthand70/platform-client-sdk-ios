//
// EdgeMetricsTopicOffsetDateTime.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EdgeMetricsTopicOffsetDateTime: Codable {

    public var dateTime: EdgeMetricsTopicLocalDateTime?
    public var offset: EdgeMetricsTopicZoneOffset?

    public init(dateTime: EdgeMetricsTopicLocalDateTime?, offset: EdgeMetricsTopicZoneOffset?) {
        
        self.dateTime = dateTime
        
        self.offset = offset
        
    }


}

