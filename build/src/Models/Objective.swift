//
// Objective.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class Objective: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The id of this objective&#39;s base template */
    public var templateId: String?
    /** Objective zone specifies min,max points and values for the associated metric */
    public var zones: [ObjectiveZone]?
    /** A flag for whether this objective is enabled for the related metric */
    public var enabled: Bool?
    /** start date of the objective. Dates are represented as an ISO-8601 string. For example: yyyy-MM-dd */
    public var dateStart: Date?

    public init(_id: String?, templateId: String?, zones: [ObjectiveZone]?, enabled: Bool?, dateStart: Date?) {
        
        self._id = _id
        
        self.templateId = templateId
        
        self.zones = zones
        
        self.enabled = enabled
        
        self.dateStart = dateStart
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case templateId
        case zones
        case enabled
        case dateStart
    }


}

