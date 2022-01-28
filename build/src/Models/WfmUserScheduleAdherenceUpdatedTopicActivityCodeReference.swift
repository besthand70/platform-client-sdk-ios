//
// WfmUserScheduleAdherenceUpdatedTopicActivityCodeReference.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmUserScheduleAdherenceUpdatedTopicActivityCodeReference: Codable {

    public var _id: String?
    public var secondaryPresences: [WfmUserScheduleAdherenceUpdatedTopicSecondaryPresenceReference]?

    public init(_id: String?, secondaryPresences: [WfmUserScheduleAdherenceUpdatedTopicSecondaryPresenceReference]?) {
        
        self._id = _id
        
        self.secondaryPresences = secondaryPresences
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case secondaryPresences
    }


}

