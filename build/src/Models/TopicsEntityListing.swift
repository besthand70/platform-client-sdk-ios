//
// TopicsEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TopicsEntityListing: Codable {

    public var entities: [ListedTopic]?
    public var pageSize: Int?
    public var selfUri: String?
    public var nextUri: String?
    public var pageCount: Int?

    public init(entities: [ListedTopic]?, pageSize: Int?, selfUri: String?, nextUri: String?, pageCount: Int?) {
        
        self.entities = entities
        
        self.pageSize = pageSize
        
        self.selfUri = selfUri
        
        self.nextUri = nextUri
        
        self.pageCount = pageCount
        
    }


}

