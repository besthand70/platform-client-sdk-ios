//
// KnowledgeDocumentSearchRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class KnowledgeDocumentSearchRequest: Codable {

    public enum SortOrder: String, Codable { 
        case asc = "ASC"
        case desc = "DESC"
        case score = "SCORE"
    }
    public enum SortBy: String, Codable { 
        case confidenceScore = "ConfidenceScore"
        case dateCreated = "DateCreated"
        case dateModified = "DateModified"
        case categoryId = "CategoryId"
        case categoryName = "CategoryName"
        case contextId = "ContextId"
        case contextName = "ContextName"
        case contextValueId = "ContextValueId"
        case contextValueName = "ContextValueName"
        case labelId = "LabelId"
        case labelName = "LabelName"
    }
    /** Query to search content in the knowledge base. Maximum of 30 records per query can be fetched. */
    public var query: String?
    /** Page size of the returned results. */
    public var pageSize: Int?
    /** Page number of the returned results. */
    public var pageNumber: Int?
    /** The globally unique identifier for the search. */
    public var searchId: String?
    /** The total number of documents matching the query. */
    public var total: Int?
    /** Number of pages returned in the result calculated according to the pageSize and the total */
    public var pageCount: Int?
    /** Indicates whether the search results would also include draft documents. */
    public var includeDraftDocuments: Bool?
    /** Retrieves the documents created/modified/published in specified date and time range. */
    public var interval: DocumentQueryInterval?
    /** Filter for the document search. */
    public var filter: DocumentQuery?
    /** The sort order for search results. */
    public var sortOrder: SortOrder?
    /** The field in the documents that you want to sort the search results by. */
    public var sortBy: SortBy?

    public init(query: String?, pageSize: Int?, pageNumber: Int?, searchId: String?, total: Int?, pageCount: Int?, includeDraftDocuments: Bool?, interval: DocumentQueryInterval?, filter: DocumentQuery?, sortOrder: SortOrder?, sortBy: SortBy?) {
        self.query = query
        self.pageSize = pageSize
        self.pageNumber = pageNumber
        self.searchId = searchId
        self.total = total
        self.pageCount = pageCount
        self.includeDraftDocuments = includeDraftDocuments
        self.interval = interval
        self.filter = filter
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }


}

