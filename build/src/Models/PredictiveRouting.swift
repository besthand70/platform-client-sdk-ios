//
// PredictiveRouting.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PredictiveRouting: Codable {

    /** A switch used to determine if agent skills will be considered. */
    public var respectSkills: Bool?

    public init(respectSkills: Bool?) {
        self.respectSkills = respectSkills
    }


}

