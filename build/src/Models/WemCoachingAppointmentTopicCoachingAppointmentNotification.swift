//
// WemCoachingAppointmentTopicCoachingAppointmentNotification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WemCoachingAppointmentTopicCoachingAppointmentNotification: Codable {

    public enum Status: String, Codable { 
        case scheduled = "Scheduled"
        case inProgress = "InProgress"
        case completed = "Completed"
        case invalidSchedule = "InvalidSchedule"
    }
    public enum ChangeType: String, Codable { 
        case create = "Create"
        case update = "Update"
        case delete = "Delete"
        case invalidate = "Invalidate"
    }
    public var _id: String?
    public var name: String?
    public var dateStart: Date?
    public var lengthInMinutes: Int?
    public var status: Status?
    public var facilitator: WemCoachingAppointmentTopicUserReference?
    public var attendees: [WemCoachingAppointmentTopicUserReference]?
    public var createdBy: WemCoachingAppointmentTopicUserReference?
    public var dateCreated: Date?
    public var modifiedBy: WemCoachingAppointmentTopicUserReference?
    public var dateModified: Date?
    public var conversations: [WemCoachingAppointmentTopicCoachingAppointmentConversation]?
    public var documents: [WemCoachingAppointmentTopicCoachingAppointmentDocument]?
    public var changeType: ChangeType?
    public var dateCompleted: Date?
    public var externalLinks: [WemCoachingAppointmentTopicCoachingAppointmentExternalLink]?

    public init(_id: String?, name: String?, dateStart: Date?, lengthInMinutes: Int?, status: Status?, facilitator: WemCoachingAppointmentTopicUserReference?, attendees: [WemCoachingAppointmentTopicUserReference]?, createdBy: WemCoachingAppointmentTopicUserReference?, dateCreated: Date?, modifiedBy: WemCoachingAppointmentTopicUserReference?, dateModified: Date?, conversations: [WemCoachingAppointmentTopicCoachingAppointmentConversation]?, documents: [WemCoachingAppointmentTopicCoachingAppointmentDocument]?, changeType: ChangeType?, dateCompleted: Date?, externalLinks: [WemCoachingAppointmentTopicCoachingAppointmentExternalLink]?) {
        
        self._id = _id
        
        self.name = name
        
        self.dateStart = dateStart
        
        self.lengthInMinutes = lengthInMinutes
        
        self.status = status
        
        self.facilitator = facilitator
        
        self.attendees = attendees
        
        self.createdBy = createdBy
        
        self.dateCreated = dateCreated
        
        self.modifiedBy = modifiedBy
        
        self.dateModified = dateModified
        
        self.conversations = conversations
        
        self.documents = documents
        
        self.changeType = changeType
        
        self.dateCompleted = dateCompleted
        
        self.externalLinks = externalLinks
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case dateStart
        case lengthInMinutes
        case status
        case facilitator
        case attendees
        case createdBy
        case dateCreated
        case modifiedBy
        case dateModified
        case conversations
        case documents
        case changeType
        case dateCompleted
        case externalLinks
    }


}

