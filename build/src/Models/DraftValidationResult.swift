//
// DraftValidationResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Validation results */

public class DraftValidationResult: Codable {

    /** Indicates if configuration is valid */
    public var valid: Bool?
    /** List of errors causing validation failure */
    public var errors: [ErrorBody]?

    public init(valid: Bool?, errors: [ErrorBody]?) {
        self.valid = valid
        self.errors = errors
    }


}

