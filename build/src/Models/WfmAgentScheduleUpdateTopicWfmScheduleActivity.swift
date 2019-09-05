//
// WfmAgentScheduleUpdateTopicWfmScheduleActivity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmAgentScheduleUpdateTopicWfmScheduleActivity: Codable {

    public var activityCodeId: String?
    public var startDate: Date?
    public var countsAsPaidTime: Bool?
    public var lengthInMinutes: Int?
    public var timeOffRequestId: String?
    public var _description: String?

    public init(activityCodeId: String?, startDate: Date?, countsAsPaidTime: Bool?, lengthInMinutes: Int?, timeOffRequestId: String?, _description: String?) {
        
        self.activityCodeId = activityCodeId
        
        self.startDate = startDate
        
        self.countsAsPaidTime = countsAsPaidTime
        
        self.lengthInMinutes = lengthInMinutes
        
        self.timeOffRequestId = timeOffRequestId
        
        self._description = _description
        
    }

    public enum CodingKeys: String, CodingKey { 
        case activityCodeId
        case startDate
        case countsAsPaidTime
        case lengthInMinutes
        case timeOffRequestId
        case _description = "description"
    }


}

