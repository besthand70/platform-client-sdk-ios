//
// WfmUserScheduleAdherenceUpdatedMuTopicActivityCodeReference.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmUserScheduleAdherenceUpdatedMuTopicActivityCodeReference: Codable {

    public var _id: String?
    public var secondaryPresences: [WfmUserScheduleAdherenceUpdatedMuTopicSecondaryPresenceReference]?

    public init(_id: String?, secondaryPresences: [WfmUserScheduleAdherenceUpdatedMuTopicSecondaryPresenceReference]?) {
        
        self._id = _id
        
        self.secondaryPresences = secondaryPresences
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case secondaryPresences
    }


}

