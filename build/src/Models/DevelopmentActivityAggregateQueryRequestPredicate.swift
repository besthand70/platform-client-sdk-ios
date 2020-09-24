//
// DevelopmentActivityAggregateQueryRequestPredicate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DevelopmentActivityAggregateQueryRequestPredicate: Codable {

    public enum Dimension: String, Codable { 
        case attendeeid = "attendeeId"
        case type = "type"
        case moduleid = "moduleId"
    }
    /** Each predicates specifies a dimension. */
    public var dimension: Dimension?
    /** Corresponding value for dimensions in predicates */
    public var value: String?

    public init(dimension: Dimension?, value: String?) {
        
        self.dimension = dimension
        
        self.value = value
        
    }


}

