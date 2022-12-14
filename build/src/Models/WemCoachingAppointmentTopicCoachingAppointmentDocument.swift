//
// WemCoachingAppointmentTopicCoachingAppointmentDocument.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WemCoachingAppointmentTopicCoachingAppointmentDocument: Codable {

    public enum Action: String, Codable { 
        case add = "Add"
        case remove = "Remove"
        case _none = "None"
    }
    public var _id: String?
    public var action: Action?

    public init(_id: String?, action: Action?) {
        self._id = _id
        self.action = action
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case action
    }


}

