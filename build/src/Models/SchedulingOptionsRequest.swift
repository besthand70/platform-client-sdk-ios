//
// SchedulingOptionsRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SchedulingOptionsRequest: Codable {

    /** Schedule generation options to apply if no forecast is supplied */
    public var noForecastOptions: SchedulingNoForecastOptionsRequest?

    public init(noForecastOptions: SchedulingNoForecastOptionsRequest?) {
        self.noForecastOptions = noForecastOptions
    }


}

