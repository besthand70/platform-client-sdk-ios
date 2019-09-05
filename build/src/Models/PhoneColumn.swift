//
// PhoneColumn.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PhoneColumn: Codable {

    /** The name of the phone column. */
    public var columnName: String?
    /** The type of the phone column. For example, &#39;cell&#39; or &#39;home&#39;. */
    public var type: String?

    public init(columnName: String?, type: String?) {
        
        self.columnName = columnName
        
        self.type = type
        
    }


}

