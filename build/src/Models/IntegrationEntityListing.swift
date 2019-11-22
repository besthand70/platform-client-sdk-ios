//
// IntegrationEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class IntegrationEntityListing: Codable {

    public var entities: [Integration]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var selfUri: String?
    public var firstUri: String?
    public var nextUri: String?
    public var lastUri: String?
    public var previousUri: String?
    public var pageCount: Int?

    public init(entities: [Integration]?, pageSize: Int?, pageNumber: Int?, total: Int64?, selfUri: String?, firstUri: String?, nextUri: String?, lastUri: String?, previousUri: String?, pageCount: Int?) {
        
        self.entities = entities
        
        self.pageSize = pageSize
        
        self.pageNumber = pageNumber
        
        self.total = total
        
        self.selfUri = selfUri
        
        self.firstUri = firstUri
        
        self.nextUri = nextUri
        
        self.lastUri = lastUri
        
        self.previousUri = previousUri
        
        self.pageCount = pageCount
        
    }


}

