//
// AcknowledgeScreenRecordingRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AcknowledgeScreenRecordingRequest: Codable {

    public var participantJid: String?
    public var roomId: String?
    public var conversationId: String?

    public init(participantJid: String?, roomId: String?, conversationId: String?) {
        
        self.participantJid = participantJid
        
        self.roomId = roomId
        
        self.conversationId = conversationId
        
    }


}
