//
// ExtensionEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ExtensionEntityListing: Codable {

    public var entities: [Extension]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var firstUri: String?
    public var selfUri: String?
    public var previousUri: String?
    public var lastUri: String?
    public var nextUri: String?
    public var pageCount: Int?

    public init(entities: [Extension]?, pageSize: Int?, pageNumber: Int?, total: Int64?, firstUri: String?, selfUri: String?, previousUri: String?, lastUri: String?, nextUri: String?, pageCount: Int?) {
        
        self.entities = entities
        
        self.pageSize = pageSize
        
        self.pageNumber = pageNumber
        
        self.total = total
        
        self.firstUri = firstUri
        
        self.selfUri = selfUri
        
        self.previousUri = previousUri
        
        self.lastUri = lastUri
        
        self.nextUri = nextUri
        
        self.pageCount = pageCount
        
    }


}

