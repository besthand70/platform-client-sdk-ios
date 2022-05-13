//
// WfmUserScheduleAdherenceUpdatedTeamTopicRealTimeAdherenceExplanation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmUserScheduleAdherenceUpdatedTeamTopicRealTimeAdherenceExplanation: Codable {

    public enum Status: String, Codable { 
        case pending = "Pending"
        case approved = "Approved"
        case denied = "Denied"
    }
    public var _id: String?
    public var startDate: Date?
    public var lengthMinutes: Int?
    public var status: Status?

    public init(_id: String?, startDate: Date?, lengthMinutes: Int?, status: Status?) {
        self._id = _id
        self.startDate = startDate
        self.lengthMinutes = lengthMinutes
        self.status = status
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case startDate
        case lengthMinutes
        case status
    }


}

