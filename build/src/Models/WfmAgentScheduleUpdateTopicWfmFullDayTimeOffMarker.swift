//
// WfmAgentScheduleUpdateTopicWfmFullDayTimeOffMarker.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmAgentScheduleUpdateTopicWfmFullDayTimeOffMarker: Codable {

    public var timeOffRequestId: String?
    public var managementUnitDate: String?
    public var activityCodeId: String?
    public var isPaid: Bool?
    public var lengthInMinutes: Int?
    public var _description: String?
    public var paid: Bool?

    public init(timeOffRequestId: String?, managementUnitDate: String?, activityCodeId: String?, isPaid: Bool?, lengthInMinutes: Int?, _description: String?, paid: Bool?) {
        self.timeOffRequestId = timeOffRequestId
        self.managementUnitDate = managementUnitDate
        self.activityCodeId = activityCodeId
        self.isPaid = isPaid
        self.lengthInMinutes = lengthInMinutes
        self._description = _description
        self.paid = paid
    }

    public enum CodingKeys: String, CodingKey { 
        case timeOffRequestId
        case managementUnitDate
        case activityCodeId
        case isPaid
        case lengthInMinutes
        case _description = "description"
        case paid
    }


}

