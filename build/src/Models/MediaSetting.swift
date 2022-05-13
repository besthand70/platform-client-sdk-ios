//
// MediaSetting.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MediaSetting: Codable {

    public var alertingTimeoutSeconds: Int?
    public var serviceLevel: ServiceLevel?

    public init(alertingTimeoutSeconds: Int?, serviceLevel: ServiceLevel?) {
        self.alertingTimeoutSeconds = alertingTimeoutSeconds
        self.serviceLevel = serviceLevel
    }


}

