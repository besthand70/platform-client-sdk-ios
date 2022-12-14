//
// LicenseBatchAssignmentRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class LicenseBatchAssignmentRequest: Codable {

    /** The list of license assignment updates to make. */
    public var assignments: [LicenseAssignmentRequest]?

    public init(assignments: [LicenseAssignmentRequest]?) {
        self.assignments = assignments
    }


}

