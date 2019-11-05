//
// WfmForecastModificationIntervalOffsetValue.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Override the value of a single interval in a forecast */

public class WfmForecastModificationIntervalOffsetValue: Codable {

    /** The number of 15 minute intervals past referenceStartDate to which to apply this modification */
    public var intervalIndex: Int?
    /** The value to set for the given interval */
    public var value: Double?

    public init(intervalIndex: Int?, value: Double?) {
        
        self.intervalIndex = intervalIndex
        
        self.value = value
        
    }


}

