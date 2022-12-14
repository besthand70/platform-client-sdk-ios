//
// ConfigurationOverrides.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConfigurationOverrides: Codable {

    /** Indicates whether or not the contact will be placed in front of the queue or at the end of the queue. */
    public var priority: Bool?

    public init(priority: Bool?) {
        self.priority = priority
    }


}

