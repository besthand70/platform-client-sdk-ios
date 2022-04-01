//
// BulkError.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BulkError: Codable {

    /** Error message of the bulk operation result. */
    public var message: String?
    /** Error code of the bulk operation result. */
    public var code: String?

    public init(message: String?, code: String?) {
        
        self.message = message
        
        self.code = code
        
    }


}

