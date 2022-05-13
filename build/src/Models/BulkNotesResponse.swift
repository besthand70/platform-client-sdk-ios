//
// BulkNotesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BulkNotesResponse: Codable {

    public var results: [BulkResponseResultNoteNote]?
    public var errorCount: Int?
    public var errorIndexes: [Int]?

    public init(results: [BulkResponseResultNoteNote]?, errorCount: Int?, errorIndexes: [Int]?) {
        self.results = results
        self.errorCount = errorCount
        self.errorIndexes = errorIndexes
    }


}

