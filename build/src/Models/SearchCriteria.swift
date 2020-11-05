//
// SearchCriteria.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SearchCriteria: Codable {

    public enum Operator: String, Codable { 
        case and = "AND"
        case or = "OR"
        case not = "NOT"
    }
    public enum ModelType: String, Codable { 
        case exact = "EXACT"
        case contains = "CONTAINS"
        case startsWith = "STARTS_WITH"
        case requiredFields = "REQUIRED_FIELDS"
        case range = "RANGE"
        case dateRange = "DATE_RANGE"
        case lessThan = "LESS_THAN"
        case lessThanEqualTo = "LESS_THAN_EQUAL_TO"
        case greaterThan = "GREATER_THAN"
        case greaterThanEqualTo = "GREATER_THAN_EQUAL_TO"
        case simple = "SIMPLE"
        case term = "TERM"
        case terms = "TERMS"
        case queryString = "QUERY_STRING"
        case matchAll = "MATCH_ALL"
    }
    /** The end value of the range. This field is used for range search types. */
    public var endValue: String?
    /** A list of values for the search to match against */
    public var values: [String]?
    /** The start value of the range. This field is used for range search types. */
    public var startValue: String?
    /** Field names to search against */
    public var fields: [String]?
    /** A value for the search to match against */
    public var value: String?
    /** How to apply this search criteria against other criteria */
    public var _operator: Operator?
    /** Groups multiple conditions */
    public var group: [SearchCriteria]?
    /** Set date format for criteria values when using date range search type.  Supports Java date format syntax, example yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSX. */
    public var dateFormat: String?
    public var type: ModelType?

    public init(endValue: String?, values: [String]?, startValue: String?, fields: [String]?, value: String?, _operator: Operator?, group: [SearchCriteria]?, dateFormat: String?, type: ModelType?) {
        
        self.endValue = endValue
        
        self.values = values
        
        self.startValue = startValue
        
        self.fields = fields
        
        self.value = value
        
        self._operator = _operator
        
        self.group = group
        
        self.dateFormat = dateFormat
        
        self.type = type
        
    }

    public enum CodingKeys: String, CodingKey { 
        case endValue
        case values
        case startValue
        case fields
        case value
        case _operator = "operator"
        case group
        case dateFormat
        case type
    }


}

