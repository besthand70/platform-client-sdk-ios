//
// AgentActivityChangedTopicOrganizationPresence.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AgentActivityChangedTopicOrganizationPresence: Codable {

    public var _id: String?
    public var systemPresence: String?

    public init(_id: String?, systemPresence: String?) {
        
        self._id = _id
        
        self.systemPresence = systemPresence
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case systemPresence
    }


}

