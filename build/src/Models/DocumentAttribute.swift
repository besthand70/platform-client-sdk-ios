//
// DocumentAttribute.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DocumentAttribute: Codable {

    public var attribute: Attribute?
    public var values: [String]?

    public init(attribute: Attribute?, values: [String]?) {
        
        self.attribute = attribute
        
        self.values = values
        
    }


}

