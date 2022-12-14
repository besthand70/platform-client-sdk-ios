//
// KeyValue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KeyValue: Codable {

    /** Key for free-form data. */
    public var key: String?
    /** Value for free-form data. */
    public var value: String?

    public init(key: String?, value: String?) {
        self.key = key
        self.value = value
    }


}

