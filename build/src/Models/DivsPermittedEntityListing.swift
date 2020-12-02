//
// DivsPermittedEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DivsPermittedEntityListing: Codable {

    public var entities: [AuthzDivision]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var allDivsPermitted: Bool?
    public var firstUri: String?
    public var selfUri: String?
    public var previousUri: String?
    public var lastUri: String?
    public var nextUri: String?
    public var pageCount: Int?

    public init(entities: [AuthzDivision]?, pageSize: Int?, pageNumber: Int?, total: Int64?, allDivsPermitted: Bool?, firstUri: String?, selfUri: String?, previousUri: String?, lastUri: String?, nextUri: String?, pageCount: Int?) {
        
        self.entities = entities
        
        self.pageSize = pageSize
        
        self.pageNumber = pageNumber
        
        self.total = total
        
        self.allDivsPermitted = allDivsPermitted
        
        self.firstUri = firstUri
        
        self.selfUri = selfUri
        
        self.previousUri = previousUri
        
        self.lastUri = lastUri
        
        self.nextUri = nextUri
        
        self.pageCount = pageCount
        
    }


}

