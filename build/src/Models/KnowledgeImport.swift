//
// KnowledgeImport.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KnowledgeImport: Codable {

    public enum FileType: String, Codable { 
        case csv = "Csv"
        case jsonLines = "JsonLines"
        case json = "Json"
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
    public enum LanguageCode: String, Codable { 
        case enUs = "en-US"
        case enUk = "en-UK"
        case enAu = "en-AU"
        case deDe = "de-DE"
        case esUs = "es-US"
        case esEs = "es-ES"
        case frFr = "fr-FR"
        case ptBr = "pt-BR"
        case nlNl = "nl-NL"
        case itIt = "it-IT"
        case frCa = "fr-CA"
    }
    /** Id of the import operation */
    public var _id: String?
    /** Name of the import operation */
    public var name: String?
    /** Upload key */
    public var uploadKey: String?
    /** file type of the document */
    public var fileType: FileType?
    /** Ignore headers for the specified file */
    public var ignoreHeaders: Bool?
    /** Status of the operation */
    public var status: Status?
    /** Report of the import operation */
    public var report: ImportReport?
    /** Knowledge base which document import does belong to */
    public var knowledgeBase: KnowledgeBase?
    /** Language code */
    public var languageCode: LanguageCode?
    /** Created date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** Last modified date. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, uploadKey: String?, fileType: FileType?, ignoreHeaders: Bool?, status: Status?, report: ImportReport?, knowledgeBase: KnowledgeBase?, languageCode: LanguageCode?, dateCreated: Date?, dateModified: Date?, selfUri: String?) {
        self._id = _id
        self.name = name
        self.uploadKey = uploadKey
        self.fileType = fileType
        self.ignoreHeaders = ignoreHeaders
        self.status = status
        self.report = report
        self.knowledgeBase = knowledgeBase
        self.languageCode = languageCode
        self.dateCreated = dateCreated
        self.dateModified = dateModified
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case uploadKey
        case fileType
        case ignoreHeaders
        case status
        case report
        case knowledgeBase
        case languageCode
        case dateCreated
        case dateModified
        case selfUri
    }


}

