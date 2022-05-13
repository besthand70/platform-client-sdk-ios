//
// ManagementUnitSettingsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ManagementUnitSettingsResponse: Codable {

    /** Adherence settings for this management unit */
    public var adherence: AdherenceSettings?
    /** Short term forecasting settings for this management unit */
    public var shortTermForecasting: ShortTermForecastingSettings?
    /** Time off request settings for this management unit */
    public var timeOff: TimeOffRequestSettings?
    /** Scheduling settings for this management unit. These settings are only available if you have the permission wfm:managementUnit:view */
    public var scheduling: SchedulingSettingsResponse?
    /** Shift trade settings for this management unit */
    public var shiftTrading: ShiftTradeSettings?
    /** Version info metadata for the associated management unit */
    public var metadata: WfmVersionedEntityMetadata?

    public init(adherence: AdherenceSettings?, shortTermForecasting: ShortTermForecastingSettings?, timeOff: TimeOffRequestSettings?, scheduling: SchedulingSettingsResponse?, shiftTrading: ShiftTradeSettings?, metadata: WfmVersionedEntityMetadata?) {
        self.adherence = adherence
        self.shortTermForecasting = shortTermForecasting
        self.timeOff = timeOff
        self.scheduling = scheduling
        self.shiftTrading = shiftTrading
        self.metadata = metadata
    }


}

