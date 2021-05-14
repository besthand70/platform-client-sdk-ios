//
// UserAvailableTimes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class UserAvailableTimes: Codable {

    /** User reference */
    public var user: UserReference?
    /** Periods of availability to schedule coaching appointment for an user */
    public var availableTimes: [AvailableTime]?

    public init(user: UserReference?, availableTimes: [AvailableTime]?) {
        
        self.user = user
        
        self.availableTimes = availableTimes
        
    }


}

