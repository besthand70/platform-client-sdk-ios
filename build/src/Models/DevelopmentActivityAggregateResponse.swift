//
// DevelopmentActivityAggregateResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DevelopmentActivityAggregateResponse: Codable {

    /** The results of the query */
    public var results: [DevelopmentActivityAggregateQueryResponseGroupedData]?

    public init(results: [DevelopmentActivityAggregateQueryResponseGroupedData]?) {
        
        self.results = results
        
    }


}

