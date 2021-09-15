//
// CustomEventAttributeList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CustomEventAttributeList: Codable {

    /** The data type of the custom attributes. */
    public var dataType: String?
    /** The list of custom event attribute values. */
    public var values: [String]?

    public init(dataType: String?, values: [String]?) {
        
        self.dataType = dataType
        
        self.values = values
        
    }


}

