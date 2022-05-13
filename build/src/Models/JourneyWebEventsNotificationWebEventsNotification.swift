//
// JourneyWebEventsNotificationWebEventsNotification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class JourneyWebEventsNotificationWebEventsNotification: Codable {

    public enum EventType: String, Codable { 
        case webEvent = "WebEvent"
        case webActionEvent = "WebActionEvent"
        case outcomeAchievedEvent = "OutcomeAchievedEvent"
    }
    public var _id: String?
    public var correlationId: String?
    public var externalContact: JourneyWebEventsNotificationExternalContact?
    public var createdDate: Date?
    public var customerId: String?
    public var customerIdType: String?
    public var session: JourneyWebEventsNotificationSession?
    public var eventType: EventType?
    public var webEvent: JourneyWebEventsNotificationWebMessage?
    public var webActionEvent: JourneyWebEventsNotificationWebActionMessage?
    public var outcomeAchievedEvent: JourneyWebEventsNotificationOutcomeAchievedMessage?

    public init(_id: String?, correlationId: String?, externalContact: JourneyWebEventsNotificationExternalContact?, createdDate: Date?, customerId: String?, customerIdType: String?, session: JourneyWebEventsNotificationSession?, eventType: EventType?, webEvent: JourneyWebEventsNotificationWebMessage?, webActionEvent: JourneyWebEventsNotificationWebActionMessage?, outcomeAchievedEvent: JourneyWebEventsNotificationOutcomeAchievedMessage?) {
        self._id = _id
        self.correlationId = correlationId
        self.externalContact = externalContact
        self.createdDate = createdDate
        self.customerId = customerId
        self.customerIdType = customerIdType
        self.session = session
        self.eventType = eventType
        self.webEvent = webEvent
        self.webActionEvent = webActionEvent
        self.outcomeAchievedEvent = outcomeAchievedEvent
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case correlationId
        case externalContact
        case createdDate
        case customerId
        case customerIdType
        case session
        case eventType
        case webEvent
        case webActionEvent
        case outcomeAchievedEvent
    }


}

