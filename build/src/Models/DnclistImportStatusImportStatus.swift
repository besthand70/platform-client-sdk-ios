//
// DnclistImportStatusImportStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DnclistImportStatusImportStatus: Codable {

    public enum ImportState: String, Codable { 
        case inProgress = "IN_PROGRESS"
        case failed = "FAILED"
    }
    /** current status of the import */
    public var importState: ImportState?
    /** total number of records to be imported */
    public var totalRecords: Int?
    /** number of records finished importing */
    public var completedRecords: Int?
    /** percentage of records finished importing */
    public var percentageComplete: Int?
    /** if the import has failed, the reason for the failure */
    public var failureReason: String?

    public init(importState: ImportState?, totalRecords: Int?, completedRecords: Int?, percentageComplete: Int?, failureReason: String?) {
        self.importState = importState
        self.totalRecords = totalRecords
        self.completedRecords = completedRecords
        self.percentageComplete = percentageComplete
        self.failureReason = failureReason
    }


}

