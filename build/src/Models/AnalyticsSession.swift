//
// AnalyticsSession.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AnalyticsSession: Codable {

    public enum MediaType: String, Codable { 
        case voice = "voice"
        case chat = "chat"
        case email = "email"
        case callback = "callback"
        case cobrowse = "cobrowse"
        case video = "video"
        case screenshare = "screenshare"
        case message = "message"
    }
    public enum MessageType: String, Codable { 
        case sms = "sms"
        case facebook = "facebook"
        case twitter = "twitter"
        case line = "line"
    }
    public enum Direction: String, Codable { 
        case inbound = "inbound"
        case outbound = "outbound"
    }
    /** The session media type */
    public var mediaType: MediaType?
    /** The unique identifier of this session */
    public var sessionId: String?
    public var addressOther: String?
    public var addressSelf: String?
    public var addressFrom: String?
    public var addressTo: String?
    /** Message type for messaging services such as sms */
    public var messageType: MessageType?
    /** Automatic Number Identification (caller&#39;s number) */
    public var ani: String?
    /** Direction */
    public var direction: Direction?
    /** Dialed number identification service (number dialed by the calling party) */
    public var dnis: String?
    /** Dialed number for the current session; this can be different from dnis, e.g. if the call was transferred */
    public var sessionDnis: String?
    /** (Dialer) Unique identifier of the outbound campaign */
    public var outboundCampaignId: String?
    /** (Dialer) Unique identifier of the contact */
    public var outboundContactId: String?
    /** (Dialer) Unique identifier of the contact list that this contact belongs to */
    public var outboundContactListId: String?
    /** (Dialer) Unique identifier of the contact list that this contact belongs to */
    public var dispositionAnalyzer: String?
    /** (Dialer) Result of the analysis */
    public var dispositionName: String?
    /** Unique identifier of the edge device */
    public var edgeId: String?
    public var remoteNameDisplayable: String?
    /** Unique identifier for the room */
    public var roomId: String?
    /** The sessionID being monitored */
    public var monitoredSessionId: String?
    public var monitoredParticipantId: String?
    /** The name of the user requesting a call back */
    public var callbackUserName: String?
    /** List of numbers to callback */
    public var callbackNumbers: [String]?
    /** Scheduled callback date/time. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss.SSSZ */
    public var callbackScheduledTime: Date?
    /** A unique identifier for a script */
    public var scriptId: String?
    /** A unique identifier for a peer */
    public var peerId: String?
    /** (Dialer) Whether the agent can skip the dialer contact */
    public var skipEnabled: Bool?
    /** The number of seconds before PureCloud begins the call for a call back. 0 disables automatic calling */
    public var timeoutSeconds: Int?
    /** Describe side of the cobrowse (sharer or viewer) */
    public var cobrowseRole: String?
    /** A unique identifier for a PureCloud Cobrowse room. */
    public var cobrowseRoomId: String?
    public var mediaBridgeId: String?
    /** Direct ScreenShare address */
    public var screenShareAddressSelf: String?
    /** Flag determining if screenShare is started or not (true/false) */
    public var sharingScreen: Bool?
    /** A unique identifier for a PureCloud ScreenShare room. */
    public var screenShareRoomId: String?
    /** A unique identifier for a PureCloud video room. */
    public var videoRoomId: String?
    /** Direct Video address */
    public var videoAddressSelf: String?
    /** List of segments for this session */
    public var segments: [AnalyticsConversationSegment]?
    /** List of metrics for this session */
    public var metrics: [AnalyticsSessionMetric]?
    /** IVR flow execution associated with this session */
    public var flow: AnalyticsFlow?
    /** Media endpoint stats associated with this session */
    public var mediaEndpointStats: [AnalyticsMediaEndpointStat]?
    /** Flag determining if an audio recording was started or not */
    public var recording: Bool?
    /** ID of the journey customer */
    public var journeyCustomerId: String?
    /** Type of the journey customer ID */
    public var journeyCustomerIdType: String?
    /** ID of the journey customer session */
    public var journeyCustomerSessionId: String?
    /** Type of the journey customer session ID */
    public var journeyCustomerSessionIdType: String?
    /** Journey action ID */
    public var journeyActionId: String?
    /** Journey action map ID */
    public var journeyActionMapId: String?
    /** Journey action map version */
    public var journeyActionMapVersion: String?
    /** The original voice protocol call ID, e.g. a SIP call ID */
    public var protocolCallId: String?
    /** The source provider for the communication */
    public var provider: String?
    /** Name, phone number, or email address of the remote party. */
    public var remote: String?
    /** Count of any media (images, files, etc) included in this session */
    public var mediaCount: Int?
    /** Type of flow out that occurred, e.g. voicemail, callback, or acd */
    public var flowOutType: String?

    public init(mediaType: MediaType?, sessionId: String?, addressOther: String?, addressSelf: String?, addressFrom: String?, addressTo: String?, messageType: MessageType?, ani: String?, direction: Direction?, dnis: String?, sessionDnis: String?, outboundCampaignId: String?, outboundContactId: String?, outboundContactListId: String?, dispositionAnalyzer: String?, dispositionName: String?, edgeId: String?, remoteNameDisplayable: String?, roomId: String?, monitoredSessionId: String?, monitoredParticipantId: String?, callbackUserName: String?, callbackNumbers: [String]?, callbackScheduledTime: Date?, scriptId: String?, peerId: String?, skipEnabled: Bool?, timeoutSeconds: Int?, cobrowseRole: String?, cobrowseRoomId: String?, mediaBridgeId: String?, screenShareAddressSelf: String?, sharingScreen: Bool?, screenShareRoomId: String?, videoRoomId: String?, videoAddressSelf: String?, segments: [AnalyticsConversationSegment]?, metrics: [AnalyticsSessionMetric]?, flow: AnalyticsFlow?, mediaEndpointStats: [AnalyticsMediaEndpointStat]?, recording: Bool?, journeyCustomerId: String?, journeyCustomerIdType: String?, journeyCustomerSessionId: String?, journeyCustomerSessionIdType: String?, journeyActionId: String?, journeyActionMapId: String?, journeyActionMapVersion: String?, protocolCallId: String?, provider: String?, remote: String?, mediaCount: Int?, flowOutType: String?) {
        
        self.mediaType = mediaType
        
        self.sessionId = sessionId
        
        self.addressOther = addressOther
        
        self.addressSelf = addressSelf
        
        self.addressFrom = addressFrom
        
        self.addressTo = addressTo
        
        self.messageType = messageType
        
        self.ani = ani
        
        self.direction = direction
        
        self.dnis = dnis
        
        self.sessionDnis = sessionDnis
        
        self.outboundCampaignId = outboundCampaignId
        
        self.outboundContactId = outboundContactId
        
        self.outboundContactListId = outboundContactListId
        
        self.dispositionAnalyzer = dispositionAnalyzer
        
        self.dispositionName = dispositionName
        
        self.edgeId = edgeId
        
        self.remoteNameDisplayable = remoteNameDisplayable
        
        self.roomId = roomId
        
        self.monitoredSessionId = monitoredSessionId
        
        self.monitoredParticipantId = monitoredParticipantId
        
        self.callbackUserName = callbackUserName
        
        self.callbackNumbers = callbackNumbers
        
        self.callbackScheduledTime = callbackScheduledTime
        
        self.scriptId = scriptId
        
        self.peerId = peerId
        
        self.skipEnabled = skipEnabled
        
        self.timeoutSeconds = timeoutSeconds
        
        self.cobrowseRole = cobrowseRole
        
        self.cobrowseRoomId = cobrowseRoomId
        
        self.mediaBridgeId = mediaBridgeId
        
        self.screenShareAddressSelf = screenShareAddressSelf
        
        self.sharingScreen = sharingScreen
        
        self.screenShareRoomId = screenShareRoomId
        
        self.videoRoomId = videoRoomId
        
        self.videoAddressSelf = videoAddressSelf
        
        self.segments = segments
        
        self.metrics = metrics
        
        self.flow = flow
        
        self.mediaEndpointStats = mediaEndpointStats
        
        self.recording = recording
        
        self.journeyCustomerId = journeyCustomerId
        
        self.journeyCustomerIdType = journeyCustomerIdType
        
        self.journeyCustomerSessionId = journeyCustomerSessionId
        
        self.journeyCustomerSessionIdType = journeyCustomerSessionIdType
        
        self.journeyActionId = journeyActionId
        
        self.journeyActionMapId = journeyActionMapId
        
        self.journeyActionMapVersion = journeyActionMapVersion
        
        self.protocolCallId = protocolCallId
        
        self.provider = provider
        
        self.remote = remote
        
        self.mediaCount = mediaCount
        
        self.flowOutType = flowOutType
        
    }


}

