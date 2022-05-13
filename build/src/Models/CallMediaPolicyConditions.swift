//
// CallMediaPolicyConditions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CallMediaPolicyConditions: Codable {

    public enum Directions: String, Codable { 
        case inbound = "INBOUND"
        case outbound = "OUTBOUND"
    }
    public var forUsers: [User]?
    public var dateRanges: [String]?
    public var forQueues: [Queue]?
    public var wrapupCodes: [WrapupCode]?
    public var languages: [Language]?
    public var timeAllowed: TimeAllowed?
    public var directions: [Directions]?
    public var duration: DurationCondition?

    public init(forUsers: [User]?, dateRanges: [String]?, forQueues: [Queue]?, wrapupCodes: [WrapupCode]?, languages: [Language]?, timeAllowed: TimeAllowed?, directions: [Directions]?, duration: DurationCondition?) {
        self.forUsers = forUsers
        self.dateRanges = dateRanges
        self.forQueues = forQueues
        self.wrapupCodes = wrapupCodes
        self.languages = languages
        self.timeAllowed = timeAllowed
        self.directions = directions
        self.duration = duration
    }


}

