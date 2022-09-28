//
// EmailConversationEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EmailConversationEntityListing: Codable {

    public var entities: [EmailConversation]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var firstUri: String?
    public var lastUri: String?
    public var selfUri: String?
    public var nextUri: String?
    public var previousUri: String?
    public var pageCount: Int?

    public init(entities: [EmailConversation]?, pageSize: Int?, pageNumber: Int?, total: Int64?, firstUri: String?, lastUri: String?, selfUri: String?, nextUri: String?, previousUri: String?, pageCount: Int?) {
        self.entities = entities
        self.pageSize = pageSize
        self.pageNumber = pageNumber
        self.total = total
        self.firstUri = firstUri
        self.lastUri = lastUri
        self.selfUri = selfUri
        self.nextUri = nextUri
        self.previousUri = previousUri
        self.pageCount = pageCount
    }


}

