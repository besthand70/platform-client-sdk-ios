//
// MuRescheduleResultWrapper.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MuRescheduleResultWrapper: Codable {

    /** The list of agent schedules */
    public var agentSchedules: [BuAgentScheduleRescheduleResponse]?

    public init(agentSchedules: [BuAgentScheduleRescheduleResponse]?) {
        self.agentSchedules = agentSchedules
    }


}

