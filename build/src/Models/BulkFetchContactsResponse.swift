//
// BulkFetchContactsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BulkFetchContactsResponse: Codable {

    public var results: [BulkResponseResultExternalContactEntity]?
    public var errorCount: Int?
    public var errorIndexes: [Int]?

    public init(results: [BulkResponseResultExternalContactEntity]?, errorCount: Int?, errorIndexes: [Int]?) {
        self.results = results
        self.errorCount = errorCount
        self.errorIndexes = errorIndexes
    }


}

