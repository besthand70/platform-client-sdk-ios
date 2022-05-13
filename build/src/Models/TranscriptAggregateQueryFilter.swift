//
// TranscriptAggregateQueryFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TranscriptAggregateQueryFilter: Codable {

    public enum ModelType: String, Codable { 
        case and = "and"
        case or = "or"
    }
    /** Boolean operation to apply to the provided predicates and clauses */
    public var type: ModelType?
    /** Boolean 'and/or' logic with up to two-levels of nesting */
    public var clauses: [TranscriptAggregateQueryClause]?
    /** Like a three-word sentence: (attribute-name) (operator) (target-value). */
    public var predicates: [TranscriptAggregateQueryPredicate]?

    public init(type: ModelType?, clauses: [TranscriptAggregateQueryClause]?, predicates: [TranscriptAggregateQueryPredicate]?) {
        self.type = type
        self.clauses = clauses
        self.predicates = predicates
    }


}

