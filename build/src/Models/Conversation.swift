//
// Conversation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class Conversation: Codable {

    public enum RecordingState: String, Codable { 
        case active = "ACTIVE"
        case paused = "PAUSED"
        case _none = "NONE"
    }
    public enum State: String, Codable { 
        case alerting = "alerting"
        case dialing = "dialing"
        case contacting = "contacting"
        case offering = "offering"
        case connected = "connected"
        case disconnected = "disconnected"
        case terminated = "terminated"
        case converting = "converting"
        case uploading = "uploading"
        case transmitting = "transmitting"
        case _none = "none"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** The external tag associated with the conversation. */
    public var externalTag: String?
    /** The time when the conversation started. This will be the time when the first participant joined the conversation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var startTime: Date?
    /** The time when the conversation ended. This will be the time when the last participant left the conversation, or null when the conversation is still active. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var endTime: Date?
    /** The address of the conversation as seen from an external participant. For phone calls this will be the DNIS for inbound calls and the ANI for outbound calls. For other media types this will be the address of the destination participant for inbound and the address of the initiating participant for outbound. */
    public var address: String?
    /** The list of all participants in the conversation. */
    public var participants: [Participant]?
    /** A list of conversations to merge into this conversation to create a conference. This field is null except when being used to create a conference. */
    public var conversationIds: [String]?
    /** If this is a conference conversation, then this field indicates the maximum number of participants allowed to participant in the conference. */
    public var maxParticipants: Int?
    /** On update, &#39;paused&#39; initiates a secure pause, &#39;active&#39; resumes any paused recordings; otherwise indicates state of conversation recording. */
    public var recordingState: RecordingState?
    /** The conversation&#39;s state */
    public var state: State?
    /** Identifiers of divisions associated with this conversation */
    public var divisions: [ConversationDivisionMembership]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, externalTag: String?, startTime: Date?, endTime: Date?, address: String?, participants: [Participant]?, conversationIds: [String]?, maxParticipants: Int?, recordingState: RecordingState?, state: State?, divisions: [ConversationDivisionMembership]?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self.externalTag = externalTag
        
        self.startTime = startTime
        
        self.endTime = endTime
        
        self.address = address
        
        self.participants = participants
        
        self.conversationIds = conversationIds
        
        self.maxParticipants = maxParticipants
        
        self.recordingState = recordingState
        
        self.state = state
        
        self.divisions = divisions
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case externalTag
        case startTime
        case endTime
        case address
        case participants
        case conversationIds
        case maxParticipants
        case recordingState
        case state
        case divisions
        case selfUri
    }


}

