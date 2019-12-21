//
// MessageEvaluation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MessageEvaluation: Codable {

    public var contactColumn: String?
    public var contactAddress: String?
    public var wrapupCodeId: String?
    /** Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var timestamp: Date?

    public init(contactColumn: String?, contactAddress: String?, wrapupCodeId: String?, timestamp: Date?) {
        
        self.contactColumn = contactColumn
        
        self.contactAddress = contactAddress
        
        self.wrapupCodeId = wrapupCodeId
        
        self.timestamp = timestamp
        
    }


}
