//
// WfmBuScheduleRunTopicBuScheduleRun.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmBuScheduleRunTopicBuScheduleRun: Codable {

    public var _id: String?
    public var weekCount: Int?
    public var schedule: WfmBuScheduleRunTopicBuScheduleReference?
    public var schedulingCanceledByUser: WfmBuScheduleRunTopicUserReference?
    public var schedulingCompletedTime: String?
    public var messageCount: Int?

    public init(_id: String?, weekCount: Int?, schedule: WfmBuScheduleRunTopicBuScheduleReference?, schedulingCanceledByUser: WfmBuScheduleRunTopicUserReference?, schedulingCompletedTime: String?, messageCount: Int?) {
        
        self._id = _id
        
        self.weekCount = weekCount
        
        self.schedule = schedule
        
        self.schedulingCanceledByUser = schedulingCanceledByUser
        
        self.schedulingCompletedTime = schedulingCompletedTime
        
        self.messageCount = messageCount
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case weekCount
        case schedule
        case schedulingCanceledByUser
        case schedulingCompletedTime
        case messageCount
    }


}

