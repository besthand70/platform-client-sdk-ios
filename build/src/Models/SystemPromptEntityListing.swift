//
// SystemPromptEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SystemPromptEntityListing: Codable {

    public var entities: [SystemPrompt]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var firstUri: String?
    public var selfUri: String?
    public var lastUri: String?
    public var previousUri: String?
    public var nextUri: String?
    public var pageCount: Int?

    public init(entities: [SystemPrompt]?, pageSize: Int?, pageNumber: Int?, total: Int64?, firstUri: String?, selfUri: String?, lastUri: String?, previousUri: String?, nextUri: String?, pageCount: Int?) {
        
        self.entities = entities
        
        self.pageSize = pageSize
        
        self.pageNumber = pageNumber
        
        self.total = total
        
        self.firstUri = firstUri
        
        self.selfUri = selfUri
        
        self.lastUri = lastUri
        
        self.previousUri = previousUri
        
        self.nextUri = nextUri
        
        self.pageCount = pageCount
        
    }


}

