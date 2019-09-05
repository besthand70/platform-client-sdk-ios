//
// TrunkConnectedStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TrunkConnectedStatus: Codable {

    public var connected: Bool?
    /** Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var connectedStateTime: Date?

    public init(connected: Bool?, connectedStateTime: Date?) {
        
        self.connected = connected
        
        self.connectedStateTime = connectedStateTime
        
    }


}

