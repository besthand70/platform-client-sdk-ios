//
// QueueConversationMessageEventTopicJourneyAction.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationMessageEventTopicJourneyAction: Codable {

    public var _id: String?
    public var actionMap: QueueConversationMessageEventTopicJourneyActionMap?

    public init(_id: String?, actionMap: QueueConversationMessageEventTopicJourneyActionMap?) {
        
        self._id = _id
        
        self.actionMap = actionMap
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case actionMap
    }


}

