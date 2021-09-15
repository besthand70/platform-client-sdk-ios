//
// SegmentListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SegmentListing: Codable {

    public var entities: [JourneySegment]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var firstUri: String?
    public var selfUri: String?
    public var previousUri: String?
    public var nextUri: String?
    public var lastUri: String?
    public var pageCount: Int?

    public init(entities: [JourneySegment]?, pageSize: Int?, pageNumber: Int?, total: Int64?, firstUri: String?, selfUri: String?, previousUri: String?, nextUri: String?, lastUri: String?, pageCount: Int?) {
        
        self.entities = entities
        
        self.pageSize = pageSize
        
        self.pageNumber = pageNumber
        
        self.total = total
        
        self.firstUri = firstUri
        
        self.selfUri = selfUri
        
        self.previousUri = previousUri
        
        self.nextUri = nextUri
        
        self.lastUri = lastUri
        
        self.pageCount = pageCount
        
    }


}

