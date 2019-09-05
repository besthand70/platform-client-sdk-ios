//
// TimeOffRequestResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TimeOffRequestResponse: Codable {

    public enum Status: String, Codable { 
        case pending = "PENDING"
        case approved = "APPROVED"
        case denied = "DENIED"
        case canceled = "CANCELED"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    /** The user associated with this time off request */
    public var user: User?
    /** Whether this is a full day request (false means partial day) */
    public var isFullDayRequest: Bool?
    /** Whether this request has been marked as read by the agent */
    public var markedAsRead: Bool?
    /** The ID of the activity code associated with this time off request. Activity code must be of the TimeOff category */
    public var activityCodeId: String?
    /** The status of this time off request */
    public var status: Status?
    /** A set of start date-times in ISO-8601 format for partial day requests.  Will be not empty if isFullDayRequest == false */
    public var partialDayStartDateTimes: [Date]?
    /** A set of dates in yyyy-MM-dd format.  Should be interpreted in the management unit&#39;s configured time zone.  Will be not empty if isFullDayRequest == true */
    public var fullDayManagementUnitDates: [String]?
    /** The daily duration of this time off request in minutes */
    public var dailyDurationMinutes: Int?
    /** Notes about the time off request */
    public var notes: String?
    /** The user who submitted this time off request */
    public var submittedBy: User?
    /** The timestamp when this request was submitted. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var submittedDate: Date?
    /** The user who reviewed this time off request */
    public var reviewedBy: User?
    /** The timestamp when this request was reviewed. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var reviewedDate: Date?
    /** The user who last modified this TimeOffRequestResponse */
    public var modifiedBy: UserReference?
    /** The timestamp when this request was last modified. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var modifiedDate: Date?
    /** The version metadata of the time off request */
    public var metadata: WfmVersionedEntityMetadata?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, user: User?, isFullDayRequest: Bool?, markedAsRead: Bool?, activityCodeId: String?, status: Status?, partialDayStartDateTimes: [Date]?, fullDayManagementUnitDates: [String]?, dailyDurationMinutes: Int?, notes: String?, submittedBy: User?, submittedDate: Date?, reviewedBy: User?, reviewedDate: Date?, modifiedBy: UserReference?, modifiedDate: Date?, metadata: WfmVersionedEntityMetadata?, selfUri: String?) {
        
        self._id = _id
        
        self.user = user
        
        self.isFullDayRequest = isFullDayRequest
        
        self.markedAsRead = markedAsRead
        
        self.activityCodeId = activityCodeId
        
        self.status = status
        
        self.partialDayStartDateTimes = partialDayStartDateTimes
        
        self.fullDayManagementUnitDates = fullDayManagementUnitDates
        
        self.dailyDurationMinutes = dailyDurationMinutes
        
        self.notes = notes
        
        self.submittedBy = submittedBy
        
        self.submittedDate = submittedDate
        
        self.reviewedBy = reviewedBy
        
        self.reviewedDate = reviewedDate
        
        self.modifiedBy = modifiedBy
        
        self.modifiedDate = modifiedDate
        
        self.metadata = metadata
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case user
        case isFullDayRequest
        case markedAsRead
        case activityCodeId
        case status
        case partialDayStartDateTimes
        case fullDayManagementUnitDates
        case dailyDurationMinutes
        case notes
        case submittedBy
        case submittedDate
        case reviewedBy
        case reviewedDate
        case modifiedBy
        case modifiedDate
        case metadata
        case selfUri
    }


}

