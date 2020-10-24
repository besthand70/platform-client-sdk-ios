//
// KnowledgeExtendedCategory.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KnowledgeExtendedCategory: Codable {

    public enum LanguageCode: String, Codable { 
        case enUs = "en-US"
        case deDe = "de-DE"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** Category name */
    public var name: String?
    /** Category description */
    public var _description: String?
    /** Knowledge base which category does belong to */
    public var knowledgeBase: KnowledgeBase?
    /** Actual language of the category */
    public var languageCode: LanguageCode?
    /** Category creation date-time. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** Category last modification date-time. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** Category parent */
    public var parent: KnowledgeCategory?
    /** Category children */
    public var children: [KnowledgeCategory]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, _description: String?, knowledgeBase: KnowledgeBase?, languageCode: LanguageCode?, dateCreated: Date?, dateModified: Date?, parent: KnowledgeCategory?, children: [KnowledgeCategory]?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self._description = _description
        
        self.knowledgeBase = knowledgeBase
        
        self.languageCode = languageCode
        
        self.dateCreated = dateCreated
        
        self.dateModified = dateModified
        
        self.parent = parent
        
        self.children = children
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _description = "description"
        case knowledgeBase
        case languageCode
        case dateCreated
        case dateModified
        case parent
        case children
        case selfUri
    }


}

