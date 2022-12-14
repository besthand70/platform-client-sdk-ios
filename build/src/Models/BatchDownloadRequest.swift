//
// BatchDownloadRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BatchDownloadRequest: Codable {

    /** Conversation id requested */
    public var conversationId: String?
    /** Recording id requested, optional.  Leave null for all recordings on the conversation */
    public var recordingId: String?

    public init(conversationId: String?, recordingId: String?) {
        self.conversationId = conversationId
        self.recordingId = recordingId
    }


}

