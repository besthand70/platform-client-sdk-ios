//
// WfmMoveAgentsCompleteTopicWfmMoveAgentsComplete.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmMoveAgentsCompleteTopicWfmMoveAgentsComplete: Codable {

    public var requestingUser: WfmMoveAgentsCompleteTopicUserReference?
    public var destinationManagementUnit: WfmMoveAgentsCompleteTopicManagementUnit?
    public var results: [WfmMoveAgentsCompleteTopicWfmMoveAgentData]?

    public init(requestingUser: WfmMoveAgentsCompleteTopicUserReference?, destinationManagementUnit: WfmMoveAgentsCompleteTopicManagementUnit?, results: [WfmMoveAgentsCompleteTopicWfmMoveAgentData]?) {
        self.requestingUser = requestingUser
        self.destinationManagementUnit = destinationManagementUnit
        self.results = results
    }


}

