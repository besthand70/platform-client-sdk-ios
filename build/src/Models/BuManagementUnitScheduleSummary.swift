//
// BuManagementUnitScheduleSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BuManagementUnitScheduleSummary: Codable {

    /** The management unit to which this summary applies */
    public var managementUnit: ManagementUnitReference?
    /** The number of agents from this management unit that are in the schedule */
    public var agentCount: Int?
    /** The start of the schedule change in the management unit. Only populated in schedule update notifications. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var startDate: Date?
    /** The end of the schedule change in the management unit. Only populated in schedule update notifications. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var endDate: Date?
    /** The changed agents in the management unit. Only populated in schedule update notifications */
    public var agents: [UserReference]?

    public init(managementUnit: ManagementUnitReference?, agentCount: Int?, startDate: Date?, endDate: Date?, agents: [UserReference]?) {
        
        self.managementUnit = managementUnit
        
        self.agentCount = agentCount
        
        self.startDate = startDate
        
        self.endDate = endDate
        
        self.agents = agents
        
    }


}

