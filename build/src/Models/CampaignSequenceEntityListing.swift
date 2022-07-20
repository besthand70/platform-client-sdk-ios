//
// CampaignSequenceEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CampaignSequenceEntityListing: Codable {

    public var entities: [CampaignSequence]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var lastUri: String?
    public var firstUri: String?
    public var selfUri: String?
    public var nextUri: String?
    public var previousUri: String?
    public var pageCount: Int?

    public init(entities: [CampaignSequence]?, pageSize: Int?, pageNumber: Int?, total: Int64?, lastUri: String?, firstUri: String?, selfUri: String?, nextUri: String?, previousUri: String?, pageCount: Int?) {
        self.entities = entities
        self.pageSize = pageSize
        self.pageNumber = pageNumber
        self.total = total
        self.lastUri = lastUri
        self.firstUri = firstUri
        self.selfUri = selfUri
        self.nextUri = nextUri
        self.previousUri = previousUri
        self.pageCount = pageCount
    }


}

