//
// CallbackMediaParticipant.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CallbackMediaParticipant: Codable {

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
    /** The unique participant ID. */
    public var _id: String?
    /** The display friendly name of the participant. */
    public var name: String?
    /** The participant address. */
    public var address: String?
    /** The time when this participant first joined the conversation. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var startTime: Date?
    /** The time when this participant went connected for this media (eg: video connected time). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var connectedTime: Date?
    /** The time when this participant went disconnected for this media (eg: video disconnected time). Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var endTime: Date?
    /** The time when this participant&#39;s hold started. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var startHoldTime: Date?
    /** The participant&#39;s purpose.  Values can be: &#39;agent&#39;, &#39;user&#39;, &#39;customer&#39;, &#39;external&#39;, &#39;acd&#39;, &#39;ivr */
    public var purpose: String?
    /** The participant&#39;s state.  Values can be: &#39;alerting&#39;, &#39;connected&#39;, &#39;disconnected&#39;, &#39;dialing&#39;, &#39;contacting */
    public var state: State?
    /** The participant&#39;s direction.  Values can be: &#39;inbound&#39; or &#39;outbound&#39; */
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
    public var user: UriReference?
    /** The PureCloud queue for this participant. */
    public var queue: UriReference?
    /** A list of ad-hoc attributes for the participant. */
    public var attributes: [String:String]?
    /** If the conversation ends in error, contains additional error details. */
    public var errorInfo: ErrorBody?
    /** The Engage script that should be used by this participant. */
    public var script: UriReference?
    /** The amount of time the participant has to complete wrap-up. */
    public var wrapupTimeoutMs: Int?
    /** Value is true when the participant has skipped wrap-up. */
    public var wrapupSkipped: Bool?
    /** Specifies how long the agent has to answer an interaction before being marked as not responding. */
    public var alertingTimeoutMs: Int?
    /** The source provider for the communication. */
    public var provider: String?
    /** If this participant represents an external contact, then this will be the reference for the external contact. */
    public var externalContact: UriReference?
    /** If this participant represents an external org, then this will be the reference for the external org. */
    public var externalOrganization: UriReference?
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
    /** The outbound preview associated with this callback. */
    public var outboundPreview: DialerPreview?
    /** The voicemail associated with this callback. */
    public var voicemail: Voicemail?
    /** The list of phone number to use for this callback. */
    public var callbackNumbers: [String]?
    /** The name of the callback target. */
    public var callbackUserName: String?
    /** If true, the callback can be skipped */
    public var skipEnabled: Bool?
    /** Duration in seconds before the callback will be auto-dialed. */
    public var timeoutSeconds: Int?
    /** The id of the config for automatically placing the callback (and handling the disposition). If absent, the callback will not be placed automatically but routed to an agent as per normal. */
    public var automatedCallbackConfigId: String?
    /** Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var callbackScheduledTime: Date?

    public init(_id: String?, name: String?, address: String?, startTime: Date?, connectedTime: Date?, endTime: Date?, startHoldTime: Date?, purpose: String?, state: State?, direction: Direction?, disconnectType: DisconnectType?, held: Bool?, wrapupRequired: Bool?, wrapupPrompt: String?, user: UriReference?, queue: UriReference?, attributes: [String:String]?, errorInfo: ErrorBody?, script: UriReference?, wrapupTimeoutMs: Int?, wrapupSkipped: Bool?, alertingTimeoutMs: Int?, provider: String?, externalContact: UriReference?, externalOrganization: UriReference?, wrapup: Wrapup?, peer: String?, flaggedReason: FlaggedReason?, journeyContext: JourneyContext?, conversationRoutingData: ConversationRoutingData?, outboundPreview: DialerPreview?, voicemail: Voicemail?, callbackNumbers: [String]?, callbackUserName: String?, skipEnabled: Bool?, timeoutSeconds: Int?, automatedCallbackConfigId: String?, callbackScheduledTime: Date?) {
        
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
        
        self.outboundPreview = outboundPreview
        
        self.voicemail = voicemail
        
        self.callbackNumbers = callbackNumbers
        
        self.callbackUserName = callbackUserName
        
        self.skipEnabled = skipEnabled
        
        self.timeoutSeconds = timeoutSeconds
        
        self.automatedCallbackConfigId = automatedCallbackConfigId
        
        self.callbackScheduledTime = callbackScheduledTime
        
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
        case outboundPreview
        case voicemail
        case callbackNumbers
        case callbackUserName
        case skipEnabled
        case timeoutSeconds
        case automatedCallbackConfigId
        case callbackScheduledTime
    }


}

