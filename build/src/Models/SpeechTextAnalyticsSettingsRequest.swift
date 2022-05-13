//
// SpeechTextAnalyticsSettingsRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SpeechTextAnalyticsSettingsRequest: Codable {

    /** Setting to choose name for the default program for topic detection */
    public var defaultProgramId: String?
    /** Setting to choose expected dialects */
    public var expectedDialects: [String]?

    public init(defaultProgramId: String?, expectedDialects: [String]?) {
        self.defaultProgramId = defaultProgramId
        self.expectedDialects = expectedDialects
    }


}

