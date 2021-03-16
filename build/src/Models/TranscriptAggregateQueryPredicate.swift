//
// TranscriptAggregateQueryPredicate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TranscriptAggregateQueryPredicate: Codable {

    public enum ModelType: String, Codable { 
        case dimension = "dimension"
        case property = "property"
        case metric = "metric"
    }
    public enum Dimension: String, Codable { 
        case addressfrom = "addressFrom"
        case addressto = "addressTo"
        case ani = "ani"
        case channel = "channel"
        case conversationid = "conversationId"
        case direction = "direction"
        case divisionid = "divisionId"
        case dnis = "dnis"
        case flowid = "flowId"
        case flowversion = "flowVersion"
        case mediatype = "mediaType"
        case messagetype = "messageType"
        case queueid = "queueId"
        case resultsby = "resultsBy"
        case teamid = "teamId"
        case topicid = "topicId"
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

