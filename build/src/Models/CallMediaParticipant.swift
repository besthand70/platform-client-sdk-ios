//
// CallMediaParticipant.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CallMediaParticipant: Codable {

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
    public enum Direction: String, Codable { 
        case inbound = "inbound"
        case outbound = "outbound"
    }
    public enum DisconnectType: String, Codable { 
        case endpoint = "endpoint"
        case client = "client"
        case system = "system"
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
    }
    public enum FlaggedReason: String, Codable { 
        case general = "general"
    }
    public enum RecordingState: String, Codable { 
        case _none = "none"
        case active = "active"
        case paused = "paused"
    }
    /** The unique participant ID. */
    public var _id: String?
    /** The display friendly name of the participant. */
    public var name: String?
    /** The participant address. */
    public var address: String?
    /** The time when this participant first joined the conversation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var startTime: Date?
    /** The time when this participant went connected for this media (eg: video connected time). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var connectedTime: Date?
    /** The time when this participant went disconnected for this media (eg: video disconnected time). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var endTime: Date?
    /** The time when this participant's hold started. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var startHoldTime: Date?
    /** The participant's purpose.  Values can be: 'agent', 'user', 'customer', 'external', 'acd', 'ivr */
    public var purpose: String?
    /** The participant's state.  Values can be: 'alerting', 'connected', 'disconnected', 'dialing', 'contacting */
    public var state: State?
    /** The participant's direction.  Values can be: 'inbound' or 'outbound' */
    public var direction: Direction?
    /** The reason the participant was disconnected from the conversation. */
    public var disconnectType: DisconnectType?
    /** Value is true when the participant is on hold. */
    public var held: Bool?
    /** Value is true when the participant requires wrap-up. */
    public var wrapupRequired: Bool?
    /** The wrap-up prompt indicating the type of wrap-up to be performed. */
    public var wrapupPrompt: String?
    /** The PureCloud user for this participant. */
    public var user: DomainEntityRef?
    /** The PureCloud queue for this participant. */
    public var queue: DomainEntityRef?
    /** The PureCloud team for this participant. */
    public var team: DomainEntityRef?
    /** A list of ad-hoc attributes for the participant. */
    public var attributes: [String:String]?
    /** If the conversation ends in error, contains additional error details. */
    public var errorInfo: ErrorInfo?
    /** The Engage script that should be used by this participant. */
    public var script: DomainEntityRef?
    /** The amount of time the participant has to complete wrap-up. */
    public var wrapupTimeoutMs: Int?
    /** Value is true when the participant has skipped wrap-up. */
    public var wrapupSkipped: Bool?
    /** Specifies how long the agent has to answer an interaction before being marked as not responding. */
    public var alertingTimeoutMs: Int?
    /** The source provider for the communication. */
    public var provider: String?
    /** If this participant represents an external contact, then this will be the reference for the external contact. */
    public var externalContact: DomainEntityRef?
    /** If this participant represents an external org, then this will be the reference for the external org. */
    public var externalOrganization: DomainEntityRef?
    /** Wrapup for this participant, if it has been applied. */
    public var wrapup: Wrapup?
    /** The peer communication corresponding to a matching leg for this communication. */
    public var peer: String?
    /** The reason specifying why participant flagged the conversation. */
    public var flaggedReason: FlaggedReason?
    /** Journey System data/context that is applicable to this communication.  When used for historical purposes, the context should be immutable.  When null, there is no applicable Journey System context. */
    public var journeyContext: JourneyContext?
    /** Information on how a communication should be routed to an agent. */
    public var conversationRoutingData: ConversationRoutingData?
    /** The timestamp when this participant started after-call work. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var startAcwTime: Date?
    /** The timestamp when this participant ended after-call work. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var endAcwTime: Date?
    /** Value is true when the call is muted. */
    public var muted: Bool?
    /** Value is true when the call is confined. */
    public var confined: Bool?
    /** Value is true when the call is being recorded. */
    public var recording: Bool?
    /** The state of the call recording. */
    public var recordingState: RecordingState?
    /** The group involved in the group ring call. */
    public var group: DomainEntityRef?
    /** The call ANI. */
    public var ani: String?
    /** The call DNIS. */
    public var dnis: String?
    /** The ID of the Content Management document if the call is a fax. */
    public var documentId: String?
    /** Extra fax information if the call is a fax. */
    public var faxStatus: FaxStatus?
    /** The ID of the participant being monitored when performing a call monitor. */
    public var monitoredParticipantId: String?
    /** The ID of the participant being coached when performing a call coach. */
    public var coachedParticipantId: String?
    /** If this participant barged in a participant's call, then this will be the id of the targeted participant. */
    public var bargedParticipantId: String?
    /** The ID of the consult transfer target participant when performing a consult transfer. */
    public var consultParticipantId: String?
    /** User-to-User information which maps to a SIP header field defined in RFC7433. UUI data is used in the Public Switched Telephone Network (PSTN) for use cases described in RFC6567. */
    public var uuiData: String?
    /** The timestamp when this participant was connected to the barge conference in the provider clock. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var bargedTime: Date?

    public init(_id: String?, name: String?, address: String?, startTime: Date?, connectedTime: Date?, endTime: Date?, startHoldTime: Date?, purpose: String?, state: State?, direction: Direction?, disconnectType: DisconnectType?, held: Bool?, wrapupRequired: Bool?, wrapupPrompt: String?, user: DomainEntityRef?, queue: DomainEntityRef?, team: DomainEntityRef?, attributes: [String:String]?, errorInfo: ErrorInfo?, script: DomainEntityRef?, wrapupTimeoutMs: Int?, wrapupSkipped: Bool?, alertingTimeoutMs: Int?, provider: String?, externalContact: DomainEntityRef?, externalOrganization: DomainEntityRef?, wrapup: Wrapup?, peer: String?, flaggedReason: FlaggedReason?, journeyContext: JourneyContext?, conversationRoutingData: ConversationRoutingData?, startAcwTime: Date?, endAcwTime: Date?, muted: Bool?, confined: Bool?, recording: Bool?, recordingState: RecordingState?, group: DomainEntityRef?, ani: String?, dnis: String?, documentId: String?, faxStatus: FaxStatus?, monitoredParticipantId: String?, coachedParticipantId: String?, bargedParticipantId: String?, consultParticipantId: String?, uuiData: String?, bargedTime: Date?) {
        self._id = _id
        self.name = name
        self.address = address
        self.startTime = startTime
        self.connectedTime = connectedTime
        self.endTime = endTime
        self.startHoldTime = startHoldTime
        self.purpose = purpose
        self.state = state
        self.direction = direction
        self.disconnectType = disconnectType
        self.held = held
        self.wrapupRequired = wrapupRequired
        self.wrapupPrompt = wrapupPrompt
        self.user = user
        self.queue = queue
        self.team = team
        self.attributes = attributes
        self.errorInfo = errorInfo
        self.script = script
        self.wrapupTimeoutMs = wrapupTimeoutMs
        self.wrapupSkipped = wrapupSkipped
        self.alertingTimeoutMs = alertingTimeoutMs
        self.provider = provider
        self.externalContact = externalContact
        self.externalOrganization = externalOrganization
        self.wrapup = wrapup
        self.peer = peer
        self.flaggedReason = flaggedReason
        self.journeyContext = journeyContext
        self.conversationRoutingData = conversationRoutingData
        self.startAcwTime = startAcwTime
        self.endAcwTime = endAcwTime
        self.muted = muted
        self.confined = confined
        self.recording = recording
        self.recordingState = recordingState
        self.group = group
        self.ani = ani
        self.dnis = dnis
        self.documentId = documentId
        self.faxStatus = faxStatus
        self.monitoredParticipantId = monitoredParticipantId
        self.coachedParticipantId = coachedParticipantId
        self.bargedParticipantId = bargedParticipantId
        self.consultParticipantId = consultParticipantId
        self.uuiData = uuiData
        self.bargedTime = bargedTime
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case address
        case startTime
        case connectedTime
        case endTime
        case startHoldTime
        case purpose
        case state
        case direction
        case disconnectType
        case held
        case wrapupRequired
        case wrapupPrompt
        case user
        case queue
        case team
        case attributes
        case errorInfo
        case script
        case wrapupTimeoutMs
        case wrapupSkipped
        case alertingTimeoutMs
        case provider
        case externalContact
        case externalOrganization
        case wrapup
        case peer
        case flaggedReason
        case journeyContext
        case conversationRoutingData
        case startAcwTime
        case endAcwTime
        case muted
        case confined
        case recording
        case recordingState
        case group
        case ani
        case dnis
        case documentId
        case faxStatus
        case monitoredParticipantId
        case coachedParticipantId
        case bargedParticipantId
        case consultParticipantId
        case uuiData
        case bargedTime
    }


}

