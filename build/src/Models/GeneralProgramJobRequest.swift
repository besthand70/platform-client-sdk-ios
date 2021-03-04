//
// GeneralProgramJobRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class GeneralProgramJobRequest: Codable {

    public enum Dialect: String, Codable { 
        case enUs = "en-US"
        case esUs = "es-US"
        case enAu = "en-AU"
        case enGb = "en-GB"
    }
    public enum Mode: String, Codable { 
        case skip = "Skip"
        case merge = "Merge"
    }
    /** The dialect of the topics to link with the general program, dialect format is {language}-{country} where language follows ISO 639-1 standard and country follows ISO 3166-1 alpha 2 standard */
    public var dialect: Dialect?
    /** The mode to use for the general program job, default value is Skip */
    public var mode: Mode?

    public init(dialect: Dialect?, mode: Mode?) {
        
        self.dialect = dialect
        
        self.mode = mode
        
    }


}

