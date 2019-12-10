//
// WorkPlan.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Work plan information */

public class WorkPlan: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** Whether the work plan is enabled for scheduling */
    public var enabled: Bool?
    /** Whether the weekly paid time constraint is enabled for this work plan */
    public var constrainWeeklyPaidTime: Bool?
    /** Whether the weekly paid time constraint is flexible for this work plan */
    public var flexibleWeeklyPaidTime: Bool?
    /** Exact weekly paid time in minutes for this work plan. Used if flexibleWeeklyPaidTime == false */
    public var weeklyExactPaidMinutes: Int?
    /** Minimum weekly paid time in minutes for this work plan. Used if flexibleWeeklyPaidTime == true */
    public var weeklyMinimumPaidMinutes: Int?
    /** Maximum weekly paid time in minutes for this work plan. Used if flexibleWeeklyPaidTime == true */
    public var weeklyMaximumPaidMinutes: Int?
    /** Whether paid time granularity is constrained for this workplan */
    public var constrainPaidTimeGranularity: Bool?
    /** Granularity in minutes allowed for shift paid time in this work plan. Used if constrainPaidTimeGranularity == true */
    public var paidTimeGranularityMinutes: Int?
    /** Whether the minimum time between shifts constraint is enabled for this work plan */
    public var constrainMinimumTimeBetweenShifts: Bool?
    /** Minimum time between shifts in minutes defined in this work plan. Used if constrainMinimumTimeBetweenShifts == true */
    public var minimumTimeBetweenShiftsMinutes: Int?
    /** Maximum number days in a week allowed to be scheduled for this work plan */
    public var maximumDays: Int?
    /** The minimum number of days that agents assigned to a work plan must work per week */
    public var minimumWorkingDaysPerWeek: Int?
    /** Optional days to schedule for this work plan */
    public var optionalDays: SetWrapperDayOfWeek?
    /** Variance in minutes among start times of shifts in this work plan */
    public var shiftStartVariances: ListWrapperShiftStartVariance?
    /** Shifts in this work plan */
    public var shifts: [WorkPlanShift]?
    /** Agents in this work plan */
    public var agents: [DeletableUserReference]?
    /** Version metadata for this work plan */
    public var metadata: WfmVersionedEntityMetadata?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, enabled: Bool?, constrainWeeklyPaidTime: Bool?, flexibleWeeklyPaidTime: Bool?, weeklyExactPaidMinutes: Int?, weeklyMinimumPaidMinutes: Int?, weeklyMaximumPaidMinutes: Int?, constrainPaidTimeGranularity: Bool?, paidTimeGranularityMinutes: Int?, constrainMinimumTimeBetweenShifts: Bool?, minimumTimeBetweenShiftsMinutes: Int?, maximumDays: Int?, minimumWorkingDaysPerWeek: Int?, optionalDays: SetWrapperDayOfWeek?, shiftStartVariances: ListWrapperShiftStartVariance?, shifts: [WorkPlanShift]?, agents: [DeletableUserReference]?, metadata: WfmVersionedEntityMetadata?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.enabled = enabled
        
        self.constrainWeeklyPaidTime = constrainWeeklyPaidTime
        
        self.flexibleWeeklyPaidTime = flexibleWeeklyPaidTime
        
        self.weeklyExactPaidMinutes = weeklyExactPaidMinutes
        
        self.weeklyMinimumPaidMinutes = weeklyMinimumPaidMinutes
        
        self.weeklyMaximumPaidMinutes = weeklyMaximumPaidMinutes
        
        self.constrainPaidTimeGranularity = constrainPaidTimeGranularity
        
        self.paidTimeGranularityMinutes = paidTimeGranularityMinutes
        
        self.constrainMinimumTimeBetweenShifts = constrainMinimumTimeBetweenShifts
        
        self.minimumTimeBetweenShiftsMinutes = minimumTimeBetweenShiftsMinutes
        
        self.maximumDays = maximumDays
        
        self.minimumWorkingDaysPerWeek = minimumWorkingDaysPerWeek
        
        self.optionalDays = optionalDays
        
        self.shiftStartVariances = shiftStartVariances
        
        self.shifts = shifts
        
        self.agents = agents
        
        self.metadata = metadata
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case enabled
        case constrainWeeklyPaidTime
        case flexibleWeeklyPaidTime
        case weeklyExactPaidMinutes
        case weeklyMinimumPaidMinutes
        case weeklyMaximumPaidMinutes
        case constrainPaidTimeGranularity
        case paidTimeGranularityMinutes
        case constrainMinimumTimeBetweenShifts
        case minimumTimeBetweenShiftsMinutes
        case maximumDays
        case minimumWorkingDaysPerWeek
        case optionalDays
        case shiftStartVariances
        case shifts
        case agents
        case metadata
        case selfUri
    }


}

