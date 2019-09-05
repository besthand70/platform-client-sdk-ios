//
// ServiceGoalGroup.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Service Goal Group */

public class ServiceGoalGroup: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** Goals defined for this service goal group */
    public var goals: ServiceGoalGroupGoals?
    /** List of queues and media types from that queue to associate with this service goal group */
    public var queueMediaAssociations: [QueueMediaAssociation]?
    /** Version metadata for the list of service goal groups for the associated management unit */
    public var metadata: WfmVersionedEntityMetadata?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, goals: ServiceGoalGroupGoals?, queueMediaAssociations: [QueueMediaAssociation]?, metadata: WfmVersionedEntityMetadata?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.goals = goals
        
        self.queueMediaAssociations = queueMediaAssociations
        
        self.metadata = metadata
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case goals
        case queueMediaAssociations
        case metadata
        case selfUri
    }


}

