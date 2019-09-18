//
// QueueObservationDataContainer.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueObservationDataContainer: Codable {

    /** A mapping from dimension to value */
    public var group: [String:String]?
    public var data: [ObservationMetricData]?

    public init(group: [String:String]?, data: [ObservationMetricData]?) {
        
        self.group = group
        
        self.data = data
        
    }


}

