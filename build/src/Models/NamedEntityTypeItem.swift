//
// NamedEntityTypeItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class NamedEntityTypeItem: Codable {

    /** A value for an named entity type definition. */
    public var value: String?
    /** Synonyms for the given named entity value. */
    public var synonyms: [String]?

    public init(value: String?, synonyms: [String]?) {
        
        self.value = value
        
        self.synonyms = synonyms
        
    }


}

