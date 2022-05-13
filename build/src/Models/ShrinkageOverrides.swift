//
// ShrinkageOverrides.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ShrinkageOverrides: Codable {

    /** Set true to clear the shrinkage interval overrides */
    public var clear: Bool?
    /** List of interval shrinkage overrides */
    public var values: [ShrinkageOverride]?

    public init(clear: Bool?, values: [ShrinkageOverride]?) {
        self.clear = clear
        self.values = values
    }


}

