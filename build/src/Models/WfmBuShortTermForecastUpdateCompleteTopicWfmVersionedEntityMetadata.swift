//
// WfmBuShortTermForecastUpdateCompleteTopicWfmVersionedEntityMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WfmBuShortTermForecastUpdateCompleteTopicWfmVersionedEntityMetadata: Codable {

    public var version: Int?
    public var modifiedBy: WfmBuShortTermForecastUpdateCompleteTopicUserReference?
    public var dateModified: Date?

    public init(version: Int?, modifiedBy: WfmBuShortTermForecastUpdateCompleteTopicUserReference?, dateModified: Date?) {
        self.version = version
        self.modifiedBy = modifiedBy
        self.dateModified = dateModified
    }


}

