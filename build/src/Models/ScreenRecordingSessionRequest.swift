//
// ScreenRecordingSessionRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ScreenRecordingSessionRequest: Codable {

    public enum State: String, Codable { 
        case stopped = "STOPPED"
    }
    /** The screen recording session&#39;s state.  Values can be: &#39;stopped&#39; */
    public var state: State?
    /** The screen recording session&#39;s archive date. Must be greater than 1 day from now if set. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var archiveDate: Date?
    /** The screen recording session&#39;s delete date. Must be greater than archiveDate if set, otherwise one day from now. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var deleteDate: Date?

    public init(state: State?, archiveDate: Date?, deleteDate: Date?) {
        
        self.state = state
        
        self.archiveDate = archiveDate
        
        self.deleteDate = deleteDate
        
    }


}

