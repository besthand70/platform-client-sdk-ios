//
// ConversationCallEventTopicJourneyAction.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A subset of the Journey System&#39;s action data relevant to a part of a conversation (for external linkage and internal usage/context) */

public class ConversationCallEventTopicJourneyAction: Codable {

    /** The ID of an action from the Journey System (an action is spawned from an actionMap) */
    public var _id: String?
    public var actionMap: ConversationCallEventTopicJourneyActionMap?

    public init(_id: String?, actionMap: ConversationCallEventTopicJourneyActionMap?) {
        
        self._id = _id
        
        self.actionMap = actionMap
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case actionMap
    }


}

