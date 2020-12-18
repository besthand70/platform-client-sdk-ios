//
// ManagementUnitListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ManagementUnitListing: Codable {

    public var entities: [ManagementUnit]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var firstUri: String?
    public var previousUri: String?
    public var nextUri: String?
    public var pageCount: Int?
    public var lastUri: String?
    public var selfUri: String?

    public init(entities: [ManagementUnit]?, pageSize: Int?, pageNumber: Int?, total: Int64?, firstUri: String?, previousUri: String?, nextUri: String?, pageCount: Int?, lastUri: String?, selfUri: String?) {
        
        self.entities = entities
        
        self.pageSize = pageSize
        
        self.pageNumber = pageNumber
        
        self.total = total
        
        self.firstUri = firstUri
        
        self.previousUri = previousUri
        
        self.nextUri = nextUri
        
        self.pageCount = pageCount
        
        self.lastUri = lastUri
        
        self.selfUri = selfUri
        
    }


}

