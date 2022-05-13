//
// EdgeVersionReport.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EdgeVersionReport: Codable {

    public var oldestVersion: EdgeVersionInformation?
    public var newestVersion: EdgeVersionInformation?

    public init(oldestVersion: EdgeVersionInformation?, newestVersion: EdgeVersionInformation?) {
        self.oldestVersion = oldestVersion
        self.newestVersion = newestVersion
    }


}

