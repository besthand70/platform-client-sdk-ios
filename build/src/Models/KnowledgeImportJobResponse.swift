//
// KnowledgeImportJobResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KnowledgeImportJobResponse: Codable {

    public enum FileType: String, Codable { 
        case json = "Json"
        case csv = "Csv"
        case xlsx = "Xlsx"
    }
    public enum Status: String, Codable { 
        case created = "Created"
        case validationInProgress = "ValidationInProgress"
        case validationCompleted = "ValidationCompleted"
        case validationFailed = "ValidationFailed"
        case started = "Started"
        case inProgress = "InProgress"
        case completed = "Completed"
        case partialCompleted = "PartialCompleted"
        case failed = "Failed"
        case abortRequested = "AbortRequested"
        case aborted = "Aborted"
    }
    /** Id of the import job */
    public var _id: String?
    /** Upload key */
    public var uploadKey: String?
    /** File type of the document */
    public var fileType: FileType?
    /** Additional optional settings */
    public var settings: KnowledgeImportJobSettings?
    /** Status of the import job */
    public var status: Status?
    /** Report of the import job */
    public var report: KnowledgeImportJobReport?
    /** Knowledge base which document import does belong to */
    public var knowledgeBase: KnowledgeBase?
    /** Created date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** Last modified date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, uploadKey: String?, fileType: FileType?, settings: KnowledgeImportJobSettings?, status: Status?, report: KnowledgeImportJobReport?, knowledgeBase: KnowledgeBase?, dateCreated: Date?, dateModified: Date?, selfUri: String?) {
        self._id = _id
        self.uploadKey = uploadKey
        self.fileType = fileType
        self.settings = settings
        self.status = status
        self.report = report
        self.knowledgeBase = knowledgeBase
        self.dateCreated = dateCreated
        self.dateModified = dateModified
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case uploadKey
        case fileType
        case settings
        case status
        case report
        case knowledgeBase
        case dateCreated
        case dateModified
        case selfUri
    }


}

