//
// ResponseFilter.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Used to filter response queries */

public class ResponseFilter: Codable {

    public enum Operator: String, Codable { 
        case _in = "IN"
        case equals = "EQUALS"
        case notequals = "NOTEQUALS"
    }
    /** Field to filter on. Allowed values are &#39;name&#39; and &#39;libraryId. */
    public var name: String?
    /** Filter operation: IN, EQUALS, NOTEQUALS. */
    public var _operator: Operator?
    /** Values to filter on. */
    public var values: [String]?

    public init(name: String?, _operator: Operator?, values: [String]?) {
        
        self.name = name
        
        self._operator = _operator
        
        self.values = values
        
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case _operator = "operator"
        case values
    }


}

