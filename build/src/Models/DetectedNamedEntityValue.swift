//
// DetectedNamedEntityValue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DetectedNamedEntityValue: Codable {

    /** The raw value of the detected named entity. */
    public var raw: String?
    /** The resolved value of the detected named entity. */
    public var resolved: String?

    public init(raw: String?, resolved: String?) {
        
        self.raw = raw
        
        self.resolved = resolved
        
    }


}

