//
// CreateManagementUnitApiRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Create Management Unit */

public class CreateManagementUnitApiRequest: Codable {

    public enum StartDayOfWeek: String, Codable { 
        case sunday = "Sunday"
        case monday = "Monday"
        case tuesday = "Tuesday"
        case wednesday = "Wednesday"
        case thursday = "Thursday"
        case friday = "Friday"
        case saturday = "Saturday"
    }
    /** The name of the management unit */
    public var name: String?
    /** The default time zone to use for this management unit */
    public var timeZone: String?
    /** The configured first day of the week for scheduling and forecasting purposes */
    public var startDayOfWeek: StartDayOfWeek?
    /** The configuration for the management unit.  If omitted, reasonable defaults will be assigned */
    public var settings: CreateManagementUnitSettingsRequest?
    /** The id of the division to which this management unit belongs.  Defaults to home division ID */
    public var divisionId: String?

    public init(name: String?, timeZone: String?, startDayOfWeek: StartDayOfWeek?, settings: CreateManagementUnitSettingsRequest?, divisionId: String?) {
        
        self.name = name
        
        self.timeZone = timeZone
        
        self.startDayOfWeek = startDayOfWeek
        
        self.settings = settings
        
        self.divisionId = divisionId
        
    }


}

