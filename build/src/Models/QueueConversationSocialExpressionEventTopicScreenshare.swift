//
// QueueConversationSocialExpressionEventTopicScreenshare.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class QueueConversationSocialExpressionEventTopicScreenshare: Codable {

    public enum State: String, Codable { 
        case alerting = "alerting"
        case dialing = "dialing"
        case contacting = "contacting"
        case offering = "offering"
        case connected = "connected"
        case disconnected = "disconnected"
        case terminated = "terminated"
        case _none = "none"
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
    /** The connection state of this communication. */
    public var state: State?
    /** Address and name data for a call endpoint. */
    public var _self: QueueConversationSocialExpressionEventTopicAddress?
    /** A globally unique identifier for this communication. */
    public var _id: String?
    /** The room id context (xmpp jid) for the conference session. */
    public var context: String?
    /** Indicates whether this participant is sharing their screen to the session. */
    public var sharing: Bool?
    /** The source provider of the screen share. */
    public var provider: String?
    /** The UUID of the script to use. */
    public var scriptId: String?
    /** The id of the peer communication corresponding to a matching leg for this communication. */
    public var peerId: String?
    /** System defined string indicating what caused the communication to disconnect. Will be null until the communication disconnects. */
    public var disconnectType: DisconnectType?
    /** The timestamp when this communication was connected in the cloud clock. */
    public var connectedTime: Date?
    /** The timestamp when this communication disconnected from the conversation in the provider clock. */
    public var disconnectedTime: Date?
    /** Call wrap up or disposition data. */
    public var wrapup: QueueConversationSocialExpressionEventTopicWrapup?
    /** A communication&#39;s after-call work data. */
    public var afterCallWork: QueueConversationSocialExpressionEventTopicAfterCallWork?
    /** Indicates if after-call is required for a communication. Only used when the ACW Setting is Agent Requested. */
    public var afterCallWorkRequired: Bool?

    public init(state: State?, _self: QueueConversationSocialExpressionEventTopicAddress?, _id: String?, context: String?, sharing: Bool?, provider: String?, scriptId: String?, peerId: String?, disconnectType: DisconnectType?, connectedTime: Date?, disconnectedTime: Date?, wrapup: QueueConversationSocialExpressionEventTopicWrapup?, afterCallWork: QueueConversationSocialExpressionEventTopicAfterCallWork?, afterCallWorkRequired: Bool?) {
        
        self.state = state
        
        self._self = _self
        
        self._id = _id
        
        self.context = context
        
        self.sharing = sharing
        
        self.provider = provider
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.disconnectType = disconnectType
        
        self.connectedTime = connectedTime
        
        self.disconnectedTime = disconnectedTime
        
        self.wrapup = wrapup
        
        self.afterCallWork = afterCallWork
        
        self.afterCallWorkRequired = afterCallWorkRequired
        
    }

    public enum CodingKeys: String, CodingKey { 
        case state
        case _self = "self"
        case _id = "id"
        case context
        case sharing
        case provider
        case scriptId
        case peerId
        case disconnectType
        case connectedTime
        case disconnectedTime
        case wrapup
        case afterCallWork
        case afterCallWorkRequired
    }


}

