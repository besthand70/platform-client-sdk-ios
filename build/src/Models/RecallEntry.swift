//
// RecallEntry.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class RecallEntry: Codable {

    public var nbrAttempts: Int?
    public var minutesBetweenAttempts: Int?

    public init(nbrAttempts: Int?, minutesBetweenAttempts: Int?) {
        self.nbrAttempts = nbrAttempts
        self.minutesBetweenAttempts = minutesBetweenAttempts
    }


}

