//
// TranscriptAggregateDataContainer.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TranscriptAggregateDataContainer: Codable {

    /** A mapping from dimension to value */
    public var group: [String:String]?
    public var data: [StatisticalResponse]?

    public init(group: [String:String]?, data: [StatisticalResponse]?) {
        
        self.group = group
        
        self.data = data
        
    }


}

