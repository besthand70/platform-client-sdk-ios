//
// MessagingCampaign.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MessagingCampaign: Codable {

    public enum CampaignStatus: String, Codable { 
        case on = "on"
        case stopping = "stopping"
        case off = "off"
        case complete = "complete"
        case invalid = "invalid"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** Creation time of the entity. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateCreated: Date?
    /** Last modified time of the entity. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var dateModified: Date?
    /** Required for updates, must match the version number of the most recent update */
    public var version: Int?
    /** The division this entity belongs to. */
    public var division: DomainEntityRef?
    /** The current status of the messaging campaign. A messaging campaign may be turned &#39;on&#39; or &#39;off&#39;. */
    public var campaignStatus: CampaignStatus?
    /** The callable time set for this messaging campaign. */
    public var callableTimeSet: DomainEntityRef?
    /** The contact list that this messaging campaign will send messages for. */
    public var contactList: DomainEntityRef?
    /** The dnc lists to check before sending a message for this messaging campaign. */
    public var dncLists: [DomainEntityRef]?
    /** Whether this messaging campaign is always running */
    public var alwaysRunning: Bool?
    /** The order in which to sort contacts for dialing, based on up to four columns. */
    public var contactSorts: [ContactSort]?
    /** How many messages this messaging campaign will send per minute. */
    public var messagesPerMinute: Int?
    /** The contact list filter to check before sending a message for this messaging campaign. */
    public var contactListFilters: [DomainEntityRef]?
    /** A list of current error conditions associated with this messaging campaign. */
    public var errors: [RestErrorDetail]?
    /** Configuration for this messaging campaign to send SMS messages. */
    public var smsConfig: SmsConfig?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, dateCreated: Date?, dateModified: Date?, version: Int?, division: DomainEntityRef?, campaignStatus: CampaignStatus?, callableTimeSet: DomainEntityRef?, contactList: DomainEntityRef?, dncLists: [DomainEntityRef]?, alwaysRunning: Bool?, contactSorts: [ContactSort]?, messagesPerMinute: Int?, contactListFilters: [DomainEntityRef]?, errors: [RestErrorDetail]?, smsConfig: SmsConfig?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.dateCreated = dateCreated
        
        self.dateModified = dateModified
        
        self.version = version
        
        self.division = division
        
        self.campaignStatus = campaignStatus
        
        self.callableTimeSet = callableTimeSet
        
        self.contactList = contactList
        
        self.dncLists = dncLists
        
        self.alwaysRunning = alwaysRunning
        
        self.contactSorts = contactSorts
        
        self.messagesPerMinute = messagesPerMinute
        
        self.contactListFilters = contactListFilters
        
        self.errors = errors
        
        self.smsConfig = smsConfig
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case dateCreated
        case dateModified
        case version
        case division
        case campaignStatus
        case callableTimeSet
        case contactList
        case dncLists
        case alwaysRunning
        case contactSorts
        case messagesPerMinute
        case contactListFilters
        case errors
        case smsConfig
        case selfUri
    }


}

