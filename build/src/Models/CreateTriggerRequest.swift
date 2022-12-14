//
// CreateTriggerRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CreateTriggerRequest: Codable {

    /** The target to invoke when a matching event is received */
    public var target: TriggerTarget?
    /** Boolean indicating if Trigger is enabled */
    public var enabled: Bool?
    /** The configuration for when a trigger is considered to be a match for an event. When not provided, all events will fire the trigger */
    public var matchCriteria: [MatchCriteria]?
    /** The name of the trigger */
    public var name: String?
    /** The topic that will cause the trigger to be invoked. Cannot be updated after creation. Valid topics can be found at /processautomation/triggers/topics  */
    public var topicName: String?
    /** How long each event is meaningful after origination, in seconds. Events older than this threshold may be dropped if the platform is delayed in processing events. Unset means events are valid indefinitely. */
    public var eventTTLSeconds: Int?
    /** Description of the trigger. Can be up to 512 characters in length. */
    public var _description: String?

    public init(target: TriggerTarget?, enabled: Bool?, matchCriteria: [MatchCriteria]?, name: String?, topicName: String?, eventTTLSeconds: Int?, _description: String?) {
        self.target = target
        self.enabled = enabled
        self.matchCriteria = matchCriteria
        self.name = name
        self.topicName = topicName
        self.eventTTLSeconds = eventTTLSeconds
        self._description = _description
    }

    public enum CodingKeys: String, CodingKey { 
        case target
        case enabled
        case matchCriteria
        case name
        case topicName
        case eventTTLSeconds
        case _description = "description"
    }


}

