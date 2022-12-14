//
// InvalidAssignment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class InvalidAssignment: Codable {

    /** Invalid user for validation */
    public var user: UserReference?
    /** The reason for the invalid input for validation */
    public var message: String?

    public init(user: UserReference?, message: String?) {
        self.user = user
        self.message = message
    }


}

