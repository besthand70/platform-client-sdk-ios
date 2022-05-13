//
// BulkFetchNotesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BulkFetchNotesResponse: Codable {

    public var results: [BulkResponseResultNoteEntity]?
    public var errorCount: Int?
    public var errorIndexes: [Int]?

    public init(results: [BulkResponseResultNoteEntity]?, errorCount: Int?, errorIndexes: [Int]?) {
        self.results = results
        self.errorCount = errorCount
        self.errorIndexes = errorIndexes
    }


}

