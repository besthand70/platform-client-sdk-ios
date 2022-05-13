//
// QueueConversationEventTopicEmail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationEventTopicEmail: Codable {

    public enum State: String, Codable { 
        case alerting = "alerting"
        case connected = "connected"
        case disconnected = "disconnected"
        case _none = "none"
        case transmitting = "transmitting"
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
    /** True if this call is held and the person on this side hears silence. */
    public var held: Bool?
    /** Indicates that the email was auto-generated like an Out of Office reply. */
    public var autoGenerated: Bool?
    /** The subject for the initial email that started this conversation. */
    public var subject: String?
    /** The source provider of the email. */
    public var provider: String?
    /** The UUID of the script to use. */
    public var scriptId: String?
    /** The id of the peer communication corresponding to a matching leg for this communication. */
    public var peerId: String?
    /** The number of email messages sent by this participant. */
    public var messagesSent: Int?
    /** Detailed information about an error response. */
    public var errorInfo: QueueConversationEventTopicErrorDetails?
    /** System defined string indicating what caused the communication to disconnect. Will be null until the communication disconnects. */
    public var disconnectType: DisconnectType?
    /** The timestamp the email was placed on hold in the cloud clock if the email is currently on hold. */
    public var startHoldTime: Date?
    /** The timestamp when this communication was connected in the cloud clock. */
    public var connectedTime: Date?
    /** The timestamp when this communication disconnected from the conversation in the provider clock. */
    public var disconnectedTime: Date?
    /** A globally unique identifier for the stored content of this communication. */
    public var messageId: String?
    /** Whether a call is inbound or outbound. */
    public var direction: Direction?
    /** A list of uploaded attachments on the email draft. */
    public var draftAttachments: [QueueConversationEventTopicAttachment]?
    /** Indicates if the inbound email was marked as spam. */
    public var spam: Bool?
    /** Call wrap up or disposition data. */
    public var wrapup: QueueConversationEventTopicWrapup?
    /** A communication's after-call work data. */
    public var afterCallWork: QueueConversationEventTopicAfterCallWork?
    /** Indicates if after-call is required for a communication. Only used when the ACW Setting is Agent Requested. */
    public var afterCallWorkRequired: Bool?

    public init(_id: String?, state: State?, held: Bool?, autoGenerated: Bool?, subject: String?, provider: String?, scriptId: String?, peerId: String?, messagesSent: Int?, errorInfo: QueueConversationEventTopicErrorDetails?, disconnectType: DisconnectType?, startHoldTime: Date?, connectedTime: Date?, disconnectedTime: Date?, messageId: String?, direction: Direction?, draftAttachments: [QueueConversationEventTopicAttachment]?, spam: Bool?, wrapup: QueueConversationEventTopicWrapup?, afterCallWork: QueueConversationEventTopicAfterCallWork?, afterCallWorkRequired: Bool?) {
        self._id = _id
        self.state = state
        self.held = held
        self.autoGenerated = autoGenerated
        self.subject = subject
        self.provider = provider
        self.scriptId = scriptId
        self.peerId = peerId
        self.messagesSent = messagesSent
        self.errorInfo = errorInfo
        self.disconnectType = disconnectType
        self.startHoldTime = startHoldTime
        self.connectedTime = connectedTime
        self.disconnectedTime = disconnectedTime
        self.messageId = messageId
        self.direction = direction
        self.draftAttachments = draftAttachments
        self.spam = spam
        self.wrapup = wrapup
        self.afterCallWork = afterCallWork
        self.afterCallWorkRequired = afterCallWorkRequired
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case state
        case held
        case autoGenerated
        case subject
        case provider
        case scriptId
        case peerId
        case messagesSent
        case errorInfo
        case disconnectType
        case startHoldTime
        case connectedTime
        case disconnectedTime
        case messageId
        case direction
        case draftAttachments
        case spam
        case wrapup
        case afterCallWork
        case afterCallWorkRequired
    }


}

