//
// AuditTopicAuditLogMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AuditTopicAuditLogMessage: Codable {

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
        case move = "Move"
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
        case workspace = "Workspace"
    }
    public var _id: String?
    public var userId: String?
    public var userHomeOrgId: String?
    public var username: AuditTopicDomainEntityRef?
    public var userDisplay: String?
    public var clientId: AuditTopicAddressableEntityRef?
    public var remoteIp: [String]?
    public var serviceName: ServiceName?
    public var eventTime: Date?
    public var message: AuditTopicMessageInfo?
    public var action: Action?
    public var entityType: EntityType?
    public var entity: AuditTopicDomainEntityRef?
    public var propertyChanges: [AuditTopicPropertyChange]?
    public var context: [String:String]?

    public init(_id: String?, userId: String?, userHomeOrgId: String?, username: AuditTopicDomainEntityRef?, userDisplay: String?, clientId: AuditTopicAddressableEntityRef?, remoteIp: [String]?, serviceName: ServiceName?, eventTime: Date?, message: AuditTopicMessageInfo?, action: Action?, entityType: EntityType?, entity: AuditTopicDomainEntityRef?, propertyChanges: [AuditTopicPropertyChange]?, context: [String:String]?) {
        
        self._id = _id
        
        self.userId = userId
        
        self.userHomeOrgId = userHomeOrgId
        
        self.username = username
        
        self.userDisplay = userDisplay
        
        self.clientId = clientId
        
        self.remoteIp = remoteIp
        
        self.serviceName = serviceName
        
        self.eventTime = eventTime
        
        self.message = message
        
        self.action = action
        
        self.entityType = entityType
        
        self.entity = entity
        
        self.propertyChanges = propertyChanges
        
        self.context = context
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case userId
        case userHomeOrgId
        case username
        case userDisplay
        case clientId
        case remoteIp
        case serviceName
        case eventTime
        case message
        case action
        case entityType
        case entity
        case propertyChanges
        case context
    }


}

