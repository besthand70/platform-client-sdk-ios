//
// DefaultObjective.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DefaultObjective: Codable {

    public enum TopicIdsFilterType: String, Codable { 
        case and = "and"
        case or = "or"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The id of this objective&#39;s base template */
    public var templateId: String?
    /** Objective zone specifies min,max points and values for the associated metric */
    public var zones: [ObjectiveZone]?
    /** A flag for whether this objective is enabled for the related metric */
    public var enabled: Bool?
    /** A list of topic ids for detected topic metrics */
    public var topics: [AddressableEntityRef]?
    /** A filter type for topic Ids. It&#39;s only used for objectives with topicIds. Default filter behavior is \&quot;or\&quot;. */
    public var topicIdsFilterType: TopicIdsFilterType?

    public init(_id: String?, templateId: String?, zones: [ObjectiveZone]?, enabled: Bool?, topics: [AddressableEntityRef]?, topicIdsFilterType: TopicIdsFilterType?) {
        
        self._id = _id
        
        self.templateId = templateId
        
        self.zones = zones
        
        self.enabled = enabled
        
        self.topics = topics
        
        self.topicIdsFilterType = topicIdsFilterType
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case templateId
        case zones
        case enabled
        case topics
        case topicIdsFilterType
    }


}

