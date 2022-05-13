//
// TranscriptionTopicTranscriptAlternative.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class TranscriptionTopicTranscriptAlternative: Codable {

    public var confidence: Double?
    public var offsetMs: Int?
    public var durationMs: Int?
    public var transcript: String?
    public var words: [TranscriptionTopicTranscriptWord]?

    public init(confidence: Double?, offsetMs: Int?, durationMs: Int?, transcript: String?, words: [TranscriptionTopicTranscriptWord]?) {
        self.confidence = confidence
        self.offsetMs = offsetMs
        self.durationMs = durationMs
        self.transcript = transcript
        self.words = words
    }


}

