//
// ValidateAddressRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ValidateAddressRequest: Codable {

    /** Address schema */
    public var address: StreetAddress?

    public init(address: StreetAddress?) {
        self.address = address
    }


}

