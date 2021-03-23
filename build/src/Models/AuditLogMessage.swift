//
// AuditLogMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AuditLogMessage: Codable {

    public enum ServiceName: String, Codable { 
        case architect = "Architect"
        case contactCenter = "ContactCenter"
        case contentManagement = "ContentManagement"
        case peoplePermissions = "PeoplePermissions"
        case presence = "Presence"
        case quality = "Quality"
        case languageUnderstanding = "LanguageUnderstanding"
        case topicsDefinitions = "TopicsDefinitions"
        case predictiveEngagement = "PredictiveEngagement"
        case workforceManagement = "WorkforceManagement"
        case triggers = "Triggers"
        case responseManagement = "ResponseManagement"
        case groups = "Groups"
        case telephony = "Telephony"
        case outbound = "Outbound"
        case speechAndTextAnalytics = "SpeechAndTextAnalytics"
        case routing = "Routing"
    }
    public enum Action: String, Codable { 
        case create = "Create"
        case view = "View"
        case update = "Update"
        case delete = "Delete"
        case download = "Download"
        case upload = "Upload"
        case memberAdd = "MemberAdd"
        case memberUpdate = "MemberUpdate"
        case memberRemove = "MemberRemove"
        case read = "Read"
        case applyProtection = "ApplyProtection"
        case revokeProtection = "RevokeProtection"
        case updateRetention = "UpdateRetention"
        case readAll = "ReadAll"
        case execute = "Execute"
        case publish = "Publish"
        case unpublish = "Unpublish"
        case activate = "Activate"
        case checkin = "Checkin"
        case checkout = "Checkout"
        case deactivate = "Deactivate"
        case debug = "Debug"
        case save = "Save"
        case revert = "Revert"
        case transcode = "Transcode"
        case enable = "Enable"
        case disable = "Disable"
        case authorize = "Authorize"
        case deauthorize = "Deauthorize"
        case authenticate = "Authenticate"
        case changePassword = "ChangePassword"
        case revoke = "Revoke"
        case export = "Export"
        case append = "Append"
        case recycle = "Recycle"
    }
    public enum EntityType: String, Codable { 
        case document = "Document"
        case queue = "Queue"
        case recording = "Recording"
        case role = "Role"
        case voicemailPolicy = "VoicemailPolicy"
        case voicemailUserPolicy = "VoicemailUserPolicy"
        case userPresence = "UserPresence"
        case wrapupCode = "WrapupCode"
        case maxOrgRoutingUtilizationCapacity = "MaxOrgRoutingUtilizationCapacity"
        case accessToken = "AccessToken"
        case oauthclient = "OAuthClient"
        case oauthclientauthorization = "OAuthClientAuthorization"
        case authOrganization = "AuthOrganization"
        case authUser = "AuthUser"
        case organizationAuthorizationTrust = "OrganizationAuthorizationTrust"
        case organizationAuthorizationUserTrust = "OrganizationAuthorizationUserTrust"
        case bulkActions = "BulkActions"
        case feedback = "Feedback"
        case topic = "Topic"
        case program = "Program"
        case segment = "Segment"
        case outcome = "Outcome"
        case sessionType = "SessionType"
        case eventType = "EventType"
        case clickstreamSettings = "ClickstreamSettings"
        case schedule = "Schedule"
        case scheduleGroup = "ScheduleGroup"
        case emergencyGroup = "EmergencyGroup"
        case ivr = "IVR"
        case trigger = "Trigger"
        case response = "Response"
        case dependencyTrackingBuild = "DependencyTrackingBuild"
        case flow = "Flow"
        case prompt = "Prompt"
        case promptResource = "PromptResource"
        case flowOutcome = "FlowOutcome"
        case flowMilestone = "FlowMilestone"
        case team = "Team"
        case edge = "Edge"
        case edgeGroup = "EdgeGroup"
        case trunk = "Trunk"
        case trunkBase = "TrunkBase"
        case did = "DID"
        case didpool = "DIDPool"
        case _extension = "Extension"
        case extensionPool = "ExtensionPool"
        case phone = "Phone"
        case phoneBase = "PhoneBase"
        case line = "Line"
        case lineBase = "LineBase"
        case outboundRoute = "OutboundRoute"
        case numberPlan = "NumberPlan"
        case site = "Site"
        case attemptLimits = "AttemptLimits"
        case callableTimeSet = "CallableTimeSet"
        case campaign = "Campaign"
        case campaignRule = "CampaignRule"
        case sequence = "Sequence"
        case contactList = "ContactList"
        case contactListFilter = "ContactListFilter"
        case dnclist = "DNCList"
        case callAnalysisResponseSet = "CallAnalysisResponseSet"
        case ruleSet = "RuleSet"
        case campaignSchedule = "CampaignSchedule"
        case sequenceSchedule = "SequenceSchedule"
        case organizationSettings = "OrganizationSettings"
        case wrapUpCodeMapping = "WrapUpCodeMapping"
        case messagingCampaign = "MessagingCampaign"
        case transcriptionSettings = "TranscriptionSettings"
        case routingTranscriptionSettings = "RoutingTranscriptionSettings"
        case speechTextAnalyticsSettings = "SpeechTextAnalyticsSettings"
        case predictor = "Predictor"
        case workPlan = "WorkPlan"
    }
    /** Id of the audit message. */
    public var _id: String?
    /** Home Organization Id associated with this audit message. */
    public var userHomeOrgId: String?
    /** User associated with this audit message. */
    public var user: DomainEntityRef?
    /** Client associated with this audit message. */
    public var client: AddressableEntityRef?
    /** List of IP addresses of systems that originated or handled the request. */
    public var remoteIp: [String]?
    /** Name of the service that logged this audit message. */
    public var serviceName: ServiceName?
    /** Date and time of when the audit message was logged. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var eventDate: Date?
    /** Message describing the event being audited. */
    public var message: MessageInfo?
    /** Action that took place. */
    public var action: Action?
    /** Entity that was impacted. */
    public var entity: DomainEntityRef?
    /** Type of the entity that was impacted. */
    public var entityType: EntityType?
    /** List of properties that were changed and changes made to those properties. */
    public var propertyChanges: [PropertyChange]?
    /** Additional context for this message. */
    public var context: [String:String]?

    public init(_id: String?, userHomeOrgId: String?, user: DomainEntityRef?, client: AddressableEntityRef?, remoteIp: [String]?, serviceName: ServiceName?, eventDate: Date?, message: MessageInfo?, action: Action?, entity: DomainEntityRef?, entityType: EntityType?, propertyChanges: [PropertyChange]?, context: [String:String]?) {
        
        self._id = _id
        
        self.userHomeOrgId = userHomeOrgId
        
        self.user = user
        
        self.client = client
        
        self.remoteIp = remoteIp
        
        self.serviceName = serviceName
        
        self.eventDate = eventDate
        
        self.message = message
        
        self.action = action
        
        self.entity = entity
        
        self.entityType = entityType
        
        self.propertyChanges = propertyChanges
        
        self.context = context
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case userHomeOrgId
        case user
        case client
        case remoteIp
        case serviceName
        case eventDate
        case message
        case action
        case entity
        case entityType
        case propertyChanges
        case context
    }


}

