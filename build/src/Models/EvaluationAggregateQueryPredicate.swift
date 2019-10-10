//
// EvaluationAggregateQueryPredicate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EvaluationAggregateQueryPredicate: Codable {

    public enum ModelType: String, Codable { 
        case dimension = "dimension"
        case property = "property"
        case metric = "metric"
    }
    public enum Dimension: String, Codable { 
        case calibrationid = "calibrationId"
        case contextid = "contextId"
        case conversationid = "conversationId"
        case divisionid = "divisionId"
        case evaluationcreateddate = "evaluationCreatedDate"
        case evaluationid = "evaluationId"
        case evaluatorid = "evaluatorId"
        case formid = "formId"
        case queueid = "queueId"
        case rescind = "rescind"
        case rescored = "rescored"
        case userid = "userId"
    }
    public enum Operator: String, Codable { 
        case matches = "matches"
        case exists = "exists"
        case notexists = "notExists"
    }
    /** Optional type, can usually be inferred */
    public var type: ModelType?
    /** Left hand side for dimension predicates */
    public var dimension: Dimension?
    /** Optional operator, default is matches */
    public var _operator: Operator?
    /** Right hand side for dimension predicates */
    public var value: String?
    /** Right hand side for dimension predicates */
    public var range: NumericRange?

    public init(type: ModelType?, dimension: Dimension?, _operator: Operator?, value: String?, range: NumericRange?) {
        
        self.type = type
        
        self.dimension = dimension
        
        self._operator = _operator
        
        self.value = value
        
        self.range = range
        
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case dimension
        case _operator = "operator"
        case value
        case range
    }


}

