//
// QueueConversationCallbackEventTopicJourneyAction.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationCallbackEventTopicJourneyAction: Codable {

    public var _id: String?
    public var actionMap: QueueConversationCallbackEventTopicJourneyActionMap?

    public init(_id: String?, actionMap: QueueConversationCallbackEventTopicJourneyActionMap?) {
        
        self._id = _id
        
        self.actionMap = actionMap
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case actionMap
    }


}

