//
// CreateTimeOffPlanRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CreateTimeOffPlanRequest: Codable {

    public enum AutoApprovalRule: String, Codable { 
        case never = "Never"
        case always = "Always"
        case checkLimits = "CheckLimits"
    }
    /** The name of this time off plan. */
    public var name: String?
    /** The set of activity code IDs to associate with this time off plan. */
    public var activityCodeIds: [String]?
    /** The set of time off limit IDs to associate with this time off plan. */
    public var timeOffLimitIds: [String]?
    /** Auto approval rule for the time off plan. */
    public var autoApprovalRule: AutoApprovalRule?
    /** The number of days before the time off request start date for when the request will be expired from the waitlist. */
    public var daysBeforeStartToExpireFromWaitlist: Int?
    /** Whether this time off plan should be used by agents. */
    public var active: Bool?

    public init(name: String?, activityCodeIds: [String]?, timeOffLimitIds: [String]?, autoApprovalRule: AutoApprovalRule?, daysBeforeStartToExpireFromWaitlist: Int?, active: Bool?) {
        
        self.name = name
        
        self.activityCodeIds = activityCodeIds
        
        self.timeOffLimitIds = timeOffLimitIds
        
        self.autoApprovalRule = autoApprovalRule
        
        self.daysBeforeStartToExpireFromWaitlist = daysBeforeStartToExpireFromWaitlist
        
        self.active = active
        
    }


}

