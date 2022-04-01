//
// QueueConversationVideoEventTopicCall.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationVideoEventTopicCall: Codable {

    public enum State: String, Codable { 
        case alerting = "alerting"
        case dialing = "dialing"
        case contacting = "contacting"
        case offering = "offering"
        case connected = "connected"
        case disconnected = "disconnected"
        case terminated = "terminated"
        case uploading = "uploading"
        case converting = "converting"
        case transmitting = "transmitting"
        case _none = "none"
    }
    public enum RecordingState: String, Codable { 
        case _none = "none"
        case active = "active"
        case paused = "paused"
    }
    public enum DisconnectType: String, Codable { 
        case endpoint = "endpoint"
        case client = "client"
        case system = "system"
        case timeout = "timeout"
        case transfer = "transfer"
        case transferConference = "transfer.conference"
        case transferConsult = "transfer.consult"
        case transferForward = "transfer.forward"
        case transferNoanswer = "transfer.noanswer"
        case transferNotavailable = "transfer.notavailable"
        case transportFailure = "transport.failure"
        case error = "error"
        case peer = "peer"
        case other = "other"
        case spam = "spam"
        case uncallable = "uncallable"
    }
    public enum Direction: String, Codable { 
        case outbound = "outbound"
        case inbound = "inbound"
    }
    /** A globally unique identifier for this communication. */
    public var _id: String?
    /** The connection state of this communication. */
    public var state: State?
    /** True if this call is being recorded. */
    public var recording: Bool?
    /** State of recording on this call. */
    public var recordingState: RecordingState?
    /** True if this call is muted so that remote participants can&#39;t hear any audio from this end. */
    public var muted: Bool?
    /** True if this call is held and the person on this side hears hold music. */
    public var confined: Bool?
    /** True if this call is held and the person on this side hears silence. */
    public var held: Bool?
    public var errorInfo: QueueConversationVideoEventTopicErrorDetails?
    /** System defined string indicating what caused the communication to disconnect. Will be null until the communication disconnects. */
    public var disconnectType: DisconnectType?
    /** The timestamp the call was placed on hold in the cloud clock if the call is currently on hold. */
    public var startHoldTime: Date?
    /** Whether a call is inbound or outbound. */
    public var direction: Direction?
    /** If call is a fax of a document in content management, the id of the document in content management. */
    public var documentId: String?
    public var _self: QueueConversationVideoEventTopicAddress?
    /** Address and name data for a call endpoint. */
    public var other: QueueConversationVideoEventTopicAddress?
    /** The source provider of the call. */
    public var provider: String?
    /** The UUID of the script to use. */
    public var scriptId: String?
    /** The id of the peer communication corresponding to a matching leg for this communication. */
    public var peerId: String?
    /** The timestamp when this communication was connected in the cloud clock. */
    public var connectedTime: Date?
    /** The timestamp when this communication disconnected from the conversation in the provider clock. */
    public var disconnectedTime: Date?
    /** List of reasons that this call was disconnected. This will be set once the call disconnects. */
    public var disconnectReasons: [QueueConversationVideoEventTopicDisconnectReason]?
    public var faxStatus: QueueConversationVideoEventTopicFaxStatus?
    /** User to User Information (UUI) data managed by SIP session application. */
    public var uuiData: String?
    /** The timestamp when this participant was connected to the barge conference in the provider clock. */
    public var bargedTime: Date?
    /** Call wrap up or disposition data. */
    public var wrapup: QueueConversationVideoEventTopicWrapup?
    public var afterCallWork: QueueConversationVideoEventTopicAfterCallWork?
    /** Indicates if after-call is required for a communication. Only used when the ACW Setting is Agent Requested. */
    public var afterCallWorkRequired: Bool?
    /** UUID of virtual agent assistant that provide suggestions to the agent participant during the conversation. */
    public var agentAssistantId: String?

    public init(_id: String?, state: State?, recording: Bool?, recordingState: RecordingState?, muted: Bool?, confined: Bool?, held: Bool?, errorInfo: QueueConversationVideoEventTopicErrorDetails?, disconnectType: DisconnectType?, startHoldTime: Date?, direction: Direction?, documentId: String?, _self: QueueConversationVideoEventTopicAddress?, other: QueueConversationVideoEventTopicAddress?, provider: String?, scriptId: String?, peerId: String?, connectedTime: Date?, disconnectedTime: Date?, disconnectReasons: [QueueConversationVideoEventTopicDisconnectReason]?, faxStatus: QueueConversationVideoEventTopicFaxStatus?, uuiData: String?, bargedTime: Date?, wrapup: QueueConversationVideoEventTopicWrapup?, afterCallWork: QueueConversationVideoEventTopicAfterCallWork?, afterCallWorkRequired: Bool?, agentAssistantId: String?) {
        
        self._id = _id
        
        self.state = state
        
        self.recording = recording
        
        self.recordingState = recordingState
        
        self.muted = muted
        
        self.confined = confined
        
        self.held = held
        
        self.errorInfo = errorInfo
        
        self.disconnectType = disconnectType
        
        self.startHoldTime = startHoldTime
        
        self.direction = direction
        
        self.documentId = documentId
        
        self._self = _self
        
        self.other = other
        
        self.provider = provider
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.disconnectReasons = disconnectReasons
        
        self.faxStatus = faxStatus
        
        self.uuiData = uuiData
        
        self.bargedTime = bargedTime
        
        self.wrapup = wrapup
        
        self.afterCallWork = afterCallWork
        
        self.afterCallWorkRequired = afterCallWorkRequired
        
        self.agentAssistantId = agentAssistantId
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case state
        case recording
        case recordingState
        case muted
        case confined
        case held
        case errorInfo
        case disconnectType
        case startHoldTime
        case direction
        case documentId
        case _self = "self"
        case other
        case provider
        case scriptId
        case peerId
        case connectedTime
        case disconnectedTime
        case disconnectReasons
        case faxStatus
        case uuiData
        case bargedTime
        case wrapup
        case afterCallWork
        case afterCallWorkRequired
        case agentAssistantId
    }


}

