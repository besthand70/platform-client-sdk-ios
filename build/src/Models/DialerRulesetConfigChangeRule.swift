//
// DialerRulesetConfigChangeRule.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DialerRulesetConfigChangeRule: Codable {

    public enum Category: String, Codable { 
        case dialerPrecall = "DIALER_PRECALL"
        case dialerWrapup = "DIALER_WRAPUP"
    }
    /** The list of rule conditions; all must evaluate to true to trigger the rule actions */
    public var conditions: [DialerRulesetConfigChangeCondition]?
    /** The identifier of the rule */
    public var _id: String?
    /** The name of the rule */
    public var name: String?
    /** The ranked order of the rule; rules are processed from lowest number to highest */
    public var order: Int?
    /** The category of the rule */
    public var category: Category?
    /** The list of rule actions to be taken if the conditions are true */
    public var actions: [DialerRulesetConfigChangeAction]?

    public init(conditions: [DialerRulesetConfigChangeCondition]?, _id: String?, name: String?, order: Int?, category: Category?, actions: [DialerRulesetConfigChangeAction]?) {
        self.conditions = conditions
        self._id = _id
        self.name = name
        self.order = order
        self.category = category
        self.actions = actions
    }

    public enum CodingKeys: String, CodingKey { 
        case conditions
        case _id = "id"
        case name
        case order
        case category
        case actions
    }


}

