//
// MessagingCampaignDivisionViewEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MessagingCampaignDivisionViewEntityListing: Codable {

    public var entities: [MessagingCampaignDivisionView]?
    public var pageSize: Int?
    public var pageNumber: Int?
    public var total: Int64?
    public var lastUri: String?
    public var firstUri: String?
    public var selfUri: String?
    public var previousUri: String?
    public var nextUri: String?
    public var pageCount: Int?

    public init(entities: [MessagingCampaignDivisionView]?, pageSize: Int?, pageNumber: Int?, total: Int64?, lastUri: String?, firstUri: String?, selfUri: String?, previousUri: String?, nextUri: String?, pageCount: Int?) {
        self.entities = entities
        self.pageSize = pageSize
        self.pageNumber = pageNumber
        self.total = total
        self.lastUri = lastUri
        self.firstUri = firstUri
        self.selfUri = selfUri
        self.previousUri = previousUri
        self.nextUri = nextUri
        self.pageCount = pageCount
    }


}

