//
// JourneyPattern.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class JourneyPattern: Codable {

    public enum StreamType: String, Codable { 
        case web = "Web"
        case custom = "Custom"
        case conversation = "Conversation"
    }
    /** A list of one or more criteria to satisfy. */
    public var criteria: [Criteria]?
    /** The number of times the pattern must match. */
    public var count: Int?
    /** The stream type for which this pattern can be matched on. */
    public var streamType: StreamType?
    /** The session type for which this pattern can be matched on. */
    public var sessionType: String?
    /** The name of the event for which this pattern can be matched on. */
    public var eventName: String?

    public init(criteria: [Criteria]?, count: Int?, streamType: StreamType?, sessionType: String?, eventName: String?) {
        
        self.criteria = criteria
        
        self.count = count
        
        self.streamType = streamType
        
        self.sessionType = sessionType
        
        self.eventName = eventName
        
    }


}

