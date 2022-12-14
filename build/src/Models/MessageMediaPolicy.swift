//
// MessageMediaPolicy.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class MessageMediaPolicy: Codable {

    /** Actions applied when specified conditions are met */
    public var actions: PolicyActions?
    /** Conditions for when actions should be applied */
    public var conditions: MessageMediaPolicyConditions?

    public init(actions: PolicyActions?, conditions: MessageMediaPolicyConditions?) {
        self.actions = actions
        self.conditions = conditions
    }


}

