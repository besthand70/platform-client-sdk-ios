//
// WfmBuShortTermForecastImportCompleteTopicBuShortTermForecast.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmBuShortTermForecastImportCompleteTopicBuShortTermForecast: Codable {

    public enum CreationMethod: String, Codable { 
        case _import = "Import"
        case importedHistoricalWeightedAverage = "ImportedHistoricalWeightedAverage"
        case historicalWeightedAverage = "HistoricalWeightedAverage"
        case advanced = "Advanced"
    }
    public var _id: String?
    public var weekDate: String?
    public var creationMethod: CreationMethod?
    public var _description: String?
    public var legacy: Bool?
    public var referenceStartDate: Date?
    public var sourceDays: [WfmBuShortTermForecastImportCompleteTopicForecastSourceDayPointer]?
    public var modifications: [WfmBuShortTermForecastImportCompleteTopicBuForecastModification]?
    public var timeZone: String?
    public var planningGroupsVersion: Int?
    public var weekCount: Int?
    public var metadata: WfmBuShortTermForecastImportCompleteTopicWfmVersionedEntityMetadata?
    public var canUseForScheduling: Bool?

    public init(_id: String?, weekDate: String?, creationMethod: CreationMethod?, _description: String?, legacy: Bool?, referenceStartDate: Date?, sourceDays: [WfmBuShortTermForecastImportCompleteTopicForecastSourceDayPointer]?, modifications: [WfmBuShortTermForecastImportCompleteTopicBuForecastModification]?, timeZone: String?, planningGroupsVersion: Int?, weekCount: Int?, metadata: WfmBuShortTermForecastImportCompleteTopicWfmVersionedEntityMetadata?, canUseForScheduling: Bool?) {
        
        self._id = _id
        
        self.weekDate = weekDate
        
        self.creationMethod = creationMethod
        
        self._description = _description
        
        self.legacy = legacy
        
        self.referenceStartDate = referenceStartDate
        
        self.sourceDays = sourceDays
        
        self.modifications = modifications
        
        self.timeZone = timeZone
        
        self.planningGroupsVersion = planningGroupsVersion
        
        self.weekCount = weekCount
        
        self.metadata = metadata
        
        self.canUseForScheduling = canUseForScheduling
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case weekDate
        case creationMethod
        case _description = "description"
        case legacy
        case referenceStartDate
        case sourceDays
        case modifications
        case timeZone
        case planningGroupsVersion
        case weekCount
        case metadata
        case canUseForScheduling
    }


}

