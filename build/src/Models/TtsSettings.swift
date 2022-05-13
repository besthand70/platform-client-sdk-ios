//
// TtsSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TtsSettings: Codable {

    /** ID of the global default TTS engine */
    public var defaultEngine: String?
    /** The list of default overrides for specific languages */
    public var languageOverrides: [LanguageOverride]?

    public init(defaultEngine: String?, languageOverrides: [LanguageOverride]?) {
        self.defaultEngine = defaultEngine
        self.languageOverrides = languageOverrides
    }


}

