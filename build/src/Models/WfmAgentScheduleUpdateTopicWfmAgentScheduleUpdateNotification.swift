//
// WfmAgentScheduleUpdateTopicWfmAgentScheduleUpdateNotification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmAgentScheduleUpdateTopicWfmAgentScheduleUpdateNotification: Codable {

    public var user: WfmAgentScheduleUpdateTopicUserReference?
    public var startDate: Date?
    public var endDate: Date?
    public var shifts: [WfmAgentScheduleUpdateTopicWfmScheduleShift]?
    public var fullDayTimeOffMarkers: [WfmAgentScheduleUpdateTopicWfmFullDayTimeOffMarker]?
    public var updates: [WfmAgentScheduleUpdateTopicWfmAgentScheduleUpdate]?

    public init(user: WfmAgentScheduleUpdateTopicUserReference?, startDate: Date?, endDate: Date?, shifts: [WfmAgentScheduleUpdateTopicWfmScheduleShift]?, fullDayTimeOffMarkers: [WfmAgentScheduleUpdateTopicWfmFullDayTimeOffMarker]?, updates: [WfmAgentScheduleUpdateTopicWfmAgentScheduleUpdate]?) {
        self.user = user
        self.startDate = startDate
        self.endDate = endDate
        self.shifts = shifts
        self.fullDayTimeOffMarkers = fullDayTimeOffMarkers
        self.updates = updates
    }


}

