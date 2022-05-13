//
// BuQueryAgentSchedulesRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BuQueryAgentSchedulesRequest: Codable {

    /** The ID of the management unit to query */
    public var managementUnitId: String?
    /** The IDs of the users to query.  Omit to query all user schedules in the management unit.  */
    public var userIds: [String]?

    public init(managementUnitId: String?, userIds: [String]?) {
        self.managementUnitId = managementUnitId
        self.userIds = userIds
    }


}

