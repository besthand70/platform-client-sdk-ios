//
// FlowObservationQueryFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class FlowObservationQueryFilter: Codable {

    public enum ModelType: String, Codable { 
        case and = "and"
        case or = "or"
    }
    /** Boolean operation to apply to the provided predicates and clauses */
    public var type: ModelType?
    /** Boolean &#39;and/or&#39; logic with up to two-levels of nesting */
    public var clauses: [FlowObservationQueryClause]?
    /** Like a three-word sentence: (attribute-name) (operator) (target-value). */
    public var predicates: [FlowObservationQueryPredicate]?

    public init(type: ModelType?, clauses: [FlowObservationQueryClause]?, predicates: [FlowObservationQueryPredicate]?) {
        
        self.type = type
        
        self.clauses = clauses
        
        self.predicates = predicates
        
    }


}

