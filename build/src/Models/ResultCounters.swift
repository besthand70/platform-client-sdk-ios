//
// ResultCounters.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ResultCounters: Codable {

    public var success: Int?
    public var failure: Int?

    public init(success: Int?, failure: Int?) {
        self.success = success
        self.failure = failure
    }


}

