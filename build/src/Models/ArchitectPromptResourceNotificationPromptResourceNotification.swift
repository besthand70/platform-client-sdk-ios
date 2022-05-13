//
// ArchitectPromptResourceNotificationPromptResourceNotification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ArchitectPromptResourceNotificationPromptResourceNotification: Codable {

    /** Id of the prompt that this notification is for. */
    public var promptId: String?
    /** Id of the prompt resource that this notification is for. */
    public var _id: String?
    /** Language resource that this notification is for. */
    public var language: String?
    /** Uri to the file for this prompt resource. */
    public var mediaUri: String?
    /** Current upload status of the prompt resource (created, uploaded, transcoded, transcodeFailed). */
    public var uploadStatus: String?
    /** Duration (in seconds) for the transcoded audio file. */
    public var durationSeconds: Double?

    public init(promptId: String?, _id: String?, language: String?, mediaUri: String?, uploadStatus: String?, durationSeconds: Double?) {
        self.promptId = promptId
        self._id = _id
        self.language = language
        self.mediaUri = mediaUri
        self.uploadStatus = uploadStatus
        self.durationSeconds = durationSeconds
    }

    public enum CodingKeys: String, CodingKey { 
        case promptId
        case _id = "id"
        case language
        case mediaUri
        case uploadStatus
        case durationSeconds
    }


}

