//
// AggregationRange.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AggregationRange: Codable {

    /** Greater than or equal to */
    public var gte: Double?
    /** Less than */
    public var lt: Double?

    public init(gte: Double?, lt: Double?) {
        
        self.gte = gte
        
        self.lt = lt
        
    }


}

