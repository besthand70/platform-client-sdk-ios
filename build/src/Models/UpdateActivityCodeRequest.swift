//
// UpdateActivityCodeRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Activity Code */

public class UpdateActivityCodeRequest: Codable {

    public enum Category: String, Codable { 
        case onQueueWork = "OnQueueWork"
        case _break = "Break"
        case meal = "Meal"
        case meeting = "Meeting"
        case offQueueWork = "OffQueueWork"
        case timeOff = "TimeOff"
        case training = "Training"
        case unavailable = "Unavailable"
        case unscheduled = "Unscheduled"
    }
    /** The name of the activity code */
    public var name: String?
    /** The activity code&#39;s category. Attempting to change the category of a default activity code will return an error */
    public var category: Category?
    /** The default length of the activity in minutes */
    public var lengthInMinutes: Int?
    /** Whether an agent is paid while performing this activity */
    public var countsAsPaidTime: Bool?
    /** Indicates whether or not the activity should be counted as work time */
    public var countsAsWorkTime: Bool?
    /** Whether an agent can select this activity code when creating or editing a time off request */
    public var agentTimeOffSelectable: Bool?
    /** Version metadata for the associated management unit&#39;s list of activity codes */
    public var metadata: WfmVersionedEntityMetadata?

    public init(name: String?, category: Category?, lengthInMinutes: Int?, countsAsPaidTime: Bool?, countsAsWorkTime: Bool?, agentTimeOffSelectable: Bool?, metadata: WfmVersionedEntityMetadata?) {
        
        self.name = name
        
        self.category = category
        
        self.lengthInMinutes = lengthInMinutes
        
        self.countsAsPaidTime = countsAsPaidTime
        
        self.countsAsWorkTime = countsAsWorkTime
        
        self.agentTimeOffSelectable = agentTimeOffSelectable
        
        self.metadata = metadata
        
    }


}

