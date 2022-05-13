//
// HistoricalAdherenceActuals.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class HistoricalAdherenceActuals: Codable {

    public enum ActualActivityCategory: String, Codable { 
        case onQueueWork = "OnQueueWork"
        case _break = "Break"
        case meal = "Meal"
        case meeting = "Meeting"
        case offQueueWork = "OffQueueWork"
        case timeOff = "TimeOff"
        case training = "Training"
        case unavailable = "Unavailable"
        case unscheduled = "Unscheduled"
    }
    /** Activity in which the user is actually engaged */
    public var actualActivityCategory: ActualActivityCategory?
    /** Actual start offset in seconds relative to query start time */
    public var startOffsetSeconds: Int?
    /** Actual end offset in seconds relative to query start time */
    public var endOffsetSeconds: Int?

    public init(actualActivityCategory: ActualActivityCategory?, startOffsetSeconds: Int?, endOffsetSeconds: Int?) {
        self.actualActivityCategory = actualActivityCategory
        self.startOffsetSeconds = startOffsetSeconds
        self.endOffsetSeconds = endOffsetSeconds
    }


}

