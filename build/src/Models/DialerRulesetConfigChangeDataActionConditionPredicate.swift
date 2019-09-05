//
// DialerRulesetConfigChangeDataActionConditionPredicate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DialerRulesetConfigChangeDataActionConditionPredicate: Codable {

    public enum OutputOperator: String, Codable { 
        case equals = "EQUALS"
        case lessThan = "LESS_THAN"
        case lessThanEquals = "LESS_THAN_EQUALS"
        case greaterThan = "GREATER_THAN"
        case greaterThanEquals = "GREATER_THAN_EQUALS"
        case contains = "CONTAINS"
        case beginsWith = "BEGINS_WITH"
        case endsWith = "ENDS_WITH"
        case before = "BEFORE"
        case after = "AFTER"
    }
    public var outputField: String?
    public var outputOperator: OutputOperator?
    public var comparisonValue: String?
    public var outputFieldMissingResolution: Bool?
    public var inverted: Bool?
    public var additionalProperties: JSON?

    public init(outputField: String?, outputOperator: OutputOperator?, comparisonValue: String?, outputFieldMissingResolution: Bool?, inverted: Bool?, additionalProperties: JSON?) {
        
        self.outputField = outputField
        
        self.outputOperator = outputOperator
        
        self.comparisonValue = comparisonValue
        
        self.outputFieldMissingResolution = outputFieldMissingResolution
        
        self.inverted = inverted
        
        self.additionalProperties = additionalProperties
        
    }


}

