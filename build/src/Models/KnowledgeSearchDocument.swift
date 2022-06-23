//
// KnowledgeSearchDocument.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KnowledgeSearchDocument: Codable {

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
    public enum ModelType: String, Codable { 
        case faq = "Faq"
        case article = "Article"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** Language of the document */
    public var languageCode: LanguageCode?
    /** Document type */
    public var type: ModelType?
    /** FAQ document details */
    public var faq: DocumentFaq?
    /** Document creation date-time. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** Document last modification date-time. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** Document categories */
    public var categories: [KnowledgeCategory]?
    /** Knowledge base which document does belong to */
    public var knowledgeBase: KnowledgeBase?
    /** External URL to the document */
    public var externalUrl: String?
    /** Article */
    public var article: DocumentArticle?
    /** The confidence associated with a document with respect to a search query */
    public var confidence: Double?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, languageCode: LanguageCode?, type: ModelType?, faq: DocumentFaq?, dateCreated: Date?, dateModified: Date?, categories: [KnowledgeCategory]?, knowledgeBase: KnowledgeBase?, externalUrl: String?, article: DocumentArticle?, confidence: Double?, selfUri: String?) {
        self._id = _id
        self.name = name
        self.languageCode = languageCode
        self.type = type
        self.faq = faq
        self.dateCreated = dateCreated
        self.dateModified = dateModified
        self.categories = categories
        self.knowledgeBase = knowledgeBase
        self.externalUrl = externalUrl
        self.article = article
        self.confidence = confidence
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case languageCode
        case type
        case faq
        case dateCreated
        case dateModified
        case categories
        case knowledgeBase
        case externalUrl
        case article
        case confidence
        case selfUri
    }


}

