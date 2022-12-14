//
// Entry.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class Entry: Codable {

    /** A value included in this facet. */
    public var value: String?
    /** The number of results with this value. */
    public var count: Int?

    public init(value: String?, count: Int?) {
        self.value = value
        self.count = count
    }


}

