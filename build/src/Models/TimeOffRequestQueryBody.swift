//
// TimeOffRequestQueryBody.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TimeOffRequestQueryBody: Codable {

    /** The set of ids to filter time off requests */
    public var ids: [String]?
    /** The set of user ids to filter time off requests */
    public var userIds: [String]?
    /** The set of statuses to filter time off requests */
    public var statuses: [String]?
    /** The set of substatuses to filter time off requests */
    public var substatuses: [String]?
    /** The inclusive range of dates to filter time off requests */
    public var dateRange: DateRange?

    public init(ids: [String]?, userIds: [String]?, statuses: [Statuses]?, substatuses: [Substatuses]?, dateRange: DateRange?) {
        self.ids = ids
        self.userIds = userIds
        self.statuses = statuses
        self.substatuses = substatuses
        self.dateRange = dateRange
    }


}

