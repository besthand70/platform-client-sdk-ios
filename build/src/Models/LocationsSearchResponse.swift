//
// LocationsSearchResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class LocationsSearchResponse: Codable {

    /** The total number of results found */
    public var total: Int64?
    /** The total number of pages */
    public var pageCount: Int?
    /** The current page size */
    public var pageSize: Int?
    /** The current page number */
    public var pageNumber: Int?
    /** Q64 value for the previous page of results */
    public var previousPage: String?
    /** Q64 value for the current page of results */
    public var currentPage: String?
    /** Q64 value for the next page of results */
    public var nextPage: String?
    /** Resource types the search was performed against */
    public var types: [String]?
    /** Search results */
    public var results: [LocationDefinition]?

    public init(total: Int64?, pageCount: Int?, pageSize: Int?, pageNumber: Int?, previousPage: String?, currentPage: String?, nextPage: String?, types: [String]?, results: [LocationDefinition]?) {
        self.total = total
        self.pageCount = pageCount
        self.pageSize = pageSize
        self.pageNumber = pageNumber
        self.previousPage = previousPage
        self.currentPage = currentPage
        self.nextPage = nextPage
        self.types = types
        self.results = results
    }


}

