//
// MessageMediaPolicyConditions.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MessageMediaPolicyConditions: Codable {

    public enum CustomerParticipation: String, Codable { 
        case yes = "YES"
        case no = "NO"
    }
    public var forUsers: [User]?
    public var dateRanges: [String]?
    public var forQueues: [Queue]?
    public var wrapupCodes: [WrapupCode]?
    public var languages: [Language]?
    public var timeAllowed: TimeAllowed?
    public var customerParticipation: CustomerParticipation?

    public init(forUsers: [User]?, dateRanges: [String]?, forQueues: [Queue]?, wrapupCodes: [WrapupCode]?, languages: [Language]?, timeAllowed: TimeAllowed?, customerParticipation: CustomerParticipation?) {
        
        self.forUsers = forUsers
        
        self.dateRanges = dateRanges
        
        self.forQueues = forQueues
        
        self.wrapupCodes = wrapupCodes
        
        self.languages = languages
        
        self.timeAllowed = timeAllowed
        
        self.customerParticipation = customerParticipation
        
    }


}

