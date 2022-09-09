//
// TextMessageListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TextMessageListing: Codable {

    public var entities: [MessageData]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var firstUri: String?
    public var selfUri: String?
    public var pageCount: Int?
    public var lastUri: String?
    public var nextUri: String?
    public var previousUri: String?

    public init(entities: [MessageData]?, pageSize: Int?, pageNumber: Int?, total: Int64?, firstUri: String?, selfUri: String?, pageCount: Int?, lastUri: String?, nextUri: String?, previousUri: String?) {
        self.entities = entities
        self.pageSize = pageSize
        self.pageNumber = pageNumber
        self.total = total
        self.firstUri = firstUri
        self.selfUri = selfUri
        self.pageCount = pageCount
        self.lastUri = lastUri
        self.nextUri = nextUri
        self.previousUri = previousUri
    }


}

