//
// TrunkMetricsQoS.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TrunkMetricsQoS: Codable {

    /** Total number of QoS mismatches over the course of the last 24-hour period (sliding window). */
    public var mismatchCount: Int?

    public init(mismatchCount: Int?) {
        self.mismatchCount = mismatchCount
    }


}

