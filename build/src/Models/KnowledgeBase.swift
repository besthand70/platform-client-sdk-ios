//
// KnowledgeBase.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KnowledgeBase: Codable {

    public enum CoreLanguage: String, Codable { 
        case enUs = "en-US"
        case enUk = "en-UK"
        case enAu = "en-AU"
        case enCa = "en-CA"
        case enHk = "en-HK"
        case enIn = "en-IN"
        case enIe = "en-IE"
        case enNz = "en-NZ"
        case enPh = "en-PH"
        case enSg = "en-SG"
        case enZa = "en-ZA"
        case deDe = "de-DE"
        case deAt = "de-AT"
        case deCh = "de-CH"
        case esAr = "es-AR"
        case esCo = "es-CO"
        case esMx = "es-MX"
        case esUs = "es-US"
        case esEs = "es-ES"
        case frFr = "fr-FR"
        case frBe = "fr-BE"
        case frCa = "fr-CA"
        case frCh = "fr-CH"
        case ptBr = "pt-BR"
        case ptPt = "pt-PT"
        case nlNl = "nl-NL"
        case nlBe = "nl-BE"
        case itIt = "it-IT"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** Knowledge base description */
    public var _description: String?
    /** Core language for knowledge base in which initial content must be created, language codes [en-US, en-UK, en-AU, de-DE] are supported currently, however the new DX knowledge will support all these language codes */
    public var coreLanguage: CoreLanguage?
    /** Knowledge base creation date-time. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** Knowledge base last modification date-time. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** The count representing the number of documents of type FAQ in the KnowledgeBase */
    public var faqCount: Int?
    /** The date representing when the last document is modified. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateDocumentLastModified: Date?
    /** The count representing the number of documents of type Article in the KnowledgeBase */
    public var articleCount: Int?
    /** Flag that indicates the knowledge base is published */
    public var published: Bool?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, _description: String?, coreLanguage: CoreLanguage?, dateCreated: Date?, dateModified: Date?, faqCount: Int?, dateDocumentLastModified: Date?, articleCount: Int?, published: Bool?, selfUri: String?) {
        self._id = _id
        self.name = name
        self._description = _description
        self.coreLanguage = coreLanguage
        self.dateCreated = dateCreated
        self.dateModified = dateModified
        self.faqCount = faqCount
        self.dateDocumentLastModified = dateDocumentLastModified
        self.articleCount = articleCount
        self.published = published
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _description = "description"
        case coreLanguage
        case dateCreated
        case dateModified
        case faqCount
        case dateDocumentLastModified
        case articleCount
        case published
        case selfUri
    }


}

