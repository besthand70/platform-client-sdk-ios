//
// TranscriptionTopicTranscriptWord.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TranscriptionTopicTranscriptWord: Codable {

    public var confidence: Double?
    public var startTimeMs: Int?
    public var offsetMs: Int?
    public var durationMs: Int?
    public var word: String?

    public init(confidence: Double?, startTimeMs: Int?, offsetMs: Int?, durationMs: Int?, word: String?) {
        self.confidence = confidence
        self.startTimeMs = startTimeMs
        self.offsetMs = offsetMs
        self.durationMs = durationMs
        self.word = word
    }


}

