//
// TimeOffRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TimeOffRequest: Codable {

    public enum Status: String, Codable { 
        case pending = "PENDING"
        case approved = "APPROVED"
        case denied = "DENIED"
        case canceled = "CANCELED"
    }
    public enum Substatus: String, Codable { 
        case advanceTimeElapsed = "AdvanceTimeElapsed"
        case autoApproved = "AutoApproved"
        case insufficientBalance = "InsufficientBalance"
        case invalidDailyDuration = "InvalidDailyDuration"
        case outsideShift = "OutsideShift"
        case removedFromWaitlist = "RemovedFromWaitlist"
        case waitlisted = "Waitlisted"
    }
    /** The id of the time off request */
    public var _id: String?
    /** The user that the time off request belongs to */
    public var user: UserReference?
    /** Whether this is a full day request (false means partial day) */
    public var isFullDayRequest: Bool?
    /** Whether this request has been marked as read by the agent */
    public var markedAsRead: Bool?
    /** The ID of the activity code associated with this time off request. Activity code must be of the TimeOff category */
    public var activityCodeId: String?
    /** Whether this is a paid time off request */
    public var paid: Bool?
    /** The status of this time off request */
    public var status: Status?
    /** The substatus of this time off request */
    public var substatus: Substatus?
    /** A set of start date-times in ISO-8601 format for partial day requests.  Will be not empty if isFullDayRequest == false */
    public var partialDayStartDateTimes: [Date]?
    /** A set of dates in yyyy-MM-dd format.  Should be interpreted in the management unit's configured time zone.  Will be not empty if isFullDayRequest == true */
    public var fullDayManagementUnitDates: [String]?
    /** The daily duration of this time off request in minutes */
    public var dailyDurationMinutes: Int?
    /** Notes about the time off request */
    public var notes: String?
    /** The user who submitted this time off request */
    public var submittedBy: UserReference?
    /** The timestamp when this request was submitted. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var submittedDate: Date?
    /** The user who reviewed this time off request */
    public var reviewedBy: UserReference?
    /** The timestamp when this request was reviewed. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var reviewedDate: Date?
    /** The version metadata of the time off request */
    public var metadata: WfmVersionedEntityMetadata?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, user: UserReference?, isFullDayRequest: Bool?, markedAsRead: Bool?, activityCodeId: String?, paid: Bool?, status: Status?, substatus: Substatus?, partialDayStartDateTimes: [Date]?, fullDayManagementUnitDates: [String]?, dailyDurationMinutes: Int?, notes: String?, submittedBy: UserReference?, submittedDate: Date?, reviewedBy: UserReference?, reviewedDate: Date?, metadata: WfmVersionedEntityMetadata?, selfUri: String?) {
        self._id = _id
        self.user = user
        self.isFullDayRequest = isFullDayRequest
        self.markedAsRead = markedAsRead
        self.activityCodeId = activityCodeId
        self.paid = paid
        self.status = status
        self.substatus = substatus
        self.partialDayStartDateTimes = partialDayStartDateTimes
        self.fullDayManagementUnitDates = fullDayManagementUnitDates
        self.dailyDurationMinutes = dailyDurationMinutes
        self.notes = notes
        self.submittedBy = submittedBy
        self.submittedDate = submittedDate
        self.reviewedBy = reviewedBy
        self.reviewedDate = reviewedDate
        self.metadata = metadata
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case user
        case isFullDayRequest
        case markedAsRead
        case activityCodeId
        case paid
        case status
        case substatus
        case partialDayStartDateTimes
        case fullDayManagementUnitDates
        case dailyDurationMinutes
        case notes
        case submittedBy
        case submittedDate
        case reviewedBy
        case reviewedDate
        case metadata
        case selfUri
    }


}

