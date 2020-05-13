//
// KnowledgeBaseListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KnowledgeBaseListing: Codable {

    public var entities: [KnowledgeBase]?
    public var nextUri: String?
    public var selfUri: String?
    public var previousUri: String?

    public init(entities: [KnowledgeBase]?, nextUri: String?, selfUri: String?, previousUri: String?) {
        
        self.entities = entities
        
        self.nextUri = nextUri
        
        self.selfUri = selfUri
        
        self.previousUri = previousUri
        
    }


}

