//
// Limit.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class Limit: Codable {

    /** The limit key */
    public var key: String?
    /** The limit value */
    public var value: Double?

    public init(key: String?, value: Double?) {
        self.key = key
        self.value = value
    }


}

