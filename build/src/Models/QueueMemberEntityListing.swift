//
// QueueMemberEntityListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueMemberEntityListing: Codable {

    public var entities: [QueueMember]?
    public var pageNumber: Int?
    public var pageSize: Int?
    public var firstUri: String?
    public var nextUri: String?
    public var selfUri: String?
    public var previousUri: String?

    public init(entities: [QueueMember]?, pageNumber: Int?, pageSize: Int?, firstUri: String?, nextUri: String?, selfUri: String?, previousUri: String?) {
        self.entities = entities
        self.pageNumber = pageNumber
        self.pageSize = pageSize
        self.firstUri = firstUri
        self.nextUri = nextUri
        self.selfUri = selfUri
        self.previousUri = previousUri
    }


}

