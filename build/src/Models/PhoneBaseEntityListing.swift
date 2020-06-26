//
// PhoneBaseEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PhoneBaseEntityListing: Codable {

    public var entities: [PhoneBase]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var firstUri: String?
    public var nextUri: String?
    public var selfUri: String?
    public var lastUri: String?
    public var previousUri: String?
    public var pageCount: Int?

    public init(entities: [PhoneBase]?, pageSize: Int?, pageNumber: Int?, total: Int64?, firstUri: String?, nextUri: String?, selfUri: String?, lastUri: String?, previousUri: String?, pageCount: Int?) {
        
        self.entities = entities
        
        self.pageSize = pageSize
        
        self.pageNumber = pageNumber
        
        self.total = total
        
        self.firstUri = firstUri
        
        self.nextUri = nextUri
        
        self.selfUri = selfUri
        
        self.lastUri = lastUri
        
        self.previousUri = previousUri
        
        self.pageCount = pageCount
        
    }


}

