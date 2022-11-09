//
// AuditTopicAuditLogMessage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AuditTopicAuditLogMessage: Codable {

    public enum ServiceName: String, Codable { 
        case agentConfig = "AgentConfig"
        case analyticsReporting = "AnalyticsReporting"
        case architect = "Architect"
        case coaching = "Coaching"
        case contactCenter = "ContactCenter"
        case contentManagement = "ContentManagement"
        case datatables = "Datatables"
        case directory = "Directory"
        case emails = "Emails"
        case dynamicSchema = "DynamicSchema"
        case gamification = "Gamification"
        case groups = "Groups"
        case integrations = "Integrations"
        case knowledge = "Knowledge"
        case languageUnderstanding = "LanguageUnderstanding"
        case learning = "Learning"
        case limits = "Limits"
        case logCapture = "LogCapture"
        case outbound = "Outbound"
        case peoplePermissions = "PeoplePermissions"
        case employeePerformance = "EmployeePerformance"
        case predictiveEngagement = "PredictiveEngagement"
        case presence = "Presence"
        case quality = "Quality"
        case responseManagement = "ResponseManagement"
        case routing = "Routing"
        case speechAndTextAnalytics = "SpeechAndTextAnalytics"
        case telephony = "Telephony"
        case topicsDefinitions = "TopicsDefinitions"
        case triggers = "Triggers"
        case processAutomation = "ProcessAutomation"
        case voicemail = "Voicemail"
        case webDeployments = "WebDeployments"
        case webhooks = "Webhooks"
        case workforceManagement = "WorkforceManagement"
        case messaging = "Messaging"
        case supportability = "Supportability"
        case callback = "Callback"
        case workitems = "Workitems"
        case scim = "SCIM"
        case numberPurchasing = "NumberPurchasing"
        case marketplace = "Marketplace"
    }
    public enum Action: String, Codable { 
        case create = "Create"
        case view = "View"
        case update = "Update"
        case move = "Move"
        case copy = "Copy"
        case delete = "Delete"
        case deleteAll = "DeleteAll"
        case fax = "Fax"
        case versionCreate = "VersionCreate"
        case download = "Download"
        case upload = "Upload"
        case memberAdd = "MemberAdd"
        case memberUpdate = "MemberUpdate"
        case memberRemove = "MemberRemove"
        case shareAdd = "ShareAdd"
        case shareRemove = "ShareRemove"
        case tagAdd = "TagAdd"
        case tagRemove = "TagRemove"
        case tagUpdate = "TagUpdate"
        case read = "Read"
        case readAll = "ReadAll"
        case execute = "Execute"
        case applyProtection = "ApplyProtection"
        case revokeProtection = "RevokeProtection"
        case updateRetention = "UpdateRetention"
        case abandon = "Abandon"
        case archive = "Archive"
        case restoreRequest = "RestoreRequest"
        case restoreComplete = "RestoreComplete"
        case promote = "Promote"
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
        case _open = "Open"
        case approved = "Approved"
        case rejected = "Rejected"
        case rollback = "Rollback"
        case implementingChange = "ImplementingChange"
        case changeImplemented = "ChangeImplemented"
        case implementingRollback = "ImplementingRollback"
        case rollbackImplemented = "RollbackImplemented"
        case write = "Write"
        case purge = "Purge"
        case processed = "Processed"
        case replace = "Replace"
        case updateInService = "UpdateInService"
        case updateOutOfService = "UpdateOutOfService"
        case cycle = "Cycle"
        case scale = "Scale"
        case ipAllowlistClear = "IpAllowlistClear"
        case addPairingRole = "AddPairingRole"
        case add = "Add"
        case verify = "Verify"
        case assign = "Assign"
        case unassign = "Unassign"
        case reassign = "Reassign"
        case reschedule = "Reschedule"
        case cancel = "Cancel"
        case softDelete = "SoftDelete"
        case hardDelete = "HardDelete"
        case reset = "Reset"
        case rotate = "Rotate"
        case restore = "Restore"
        case unarchive = "Unarchive"
        case enableCapture = "EnableCapture"
        case downloadCapture = "DownloadCapture"
    }
    public enum EntityType: String, Codable { 
        case accessToken = "AccessToken"
        case action = "Action"
        case actionDraft = "ActionDraft"
        case actionMap = "ActionMap"
        case actionTemplate = "ActionTemplate"
        case activityCode = "ActivityCode"
        case adherenceExplanation = "AdherenceExplanation"
        case agentRoutingInfo = "AgentRoutingInfo"
        case analyticsReportingSettings = "AnalyticsReportingSettings"
        case annotation = "Annotation"
        case appointment = "Appointment"
        case assignment = "Assignment"
        case attemptLimits = "AttemptLimits"
        case authOrganization = "AuthOrganization"
        case authUser = "AuthUser"
        case bulk = "Bulk"
        case bulkActions = "BulkActions"
        case businessUnit = "BusinessUnit"
        case calibration = "Calibration"
        case callableTimeSet = "CallableTimeSet"
        case callAnalysisResponseSet = "CallAnalysisResponseSet"
        case campaign = "Campaign"
        case campaignRule = "CampaignRule"
        case campaignSchedule = "CampaignSchedule"
        case changeRequest = "ChangeRequest"
        case clickstreamSettings = "ClickstreamSettings"
        case configuration = "Configuration"
        case configurationVersion = "ConfigurationVersion"
        case contactList = "ContactList"
        case contactListFilter = "ContactListFilter"
        case contactSchema = "ContactSchema"
        case conversationAttributes = "ConversationAttributes"
        case conversationAccount = "ConversationAccount"
        case conversationDefaultSupportedContent = "ConversationDefaultSupportedContent"
        case conversationPhoneNumber = "ConversationPhoneNumber"
        case conversationRecipient = "ConversationRecipient"
        case conversationThreadingWindow = "ConversationThreadingWindow"
        case credential = "Credential"
        case dashboardSettings = "DashboardSettings"
        case defaultPanelSettings = "DefaultPanelSettings"
        case dependencyTrackingBuild = "DependencyTrackingBuild"
        case deployment = "Deployment"
        case did = "DID"
        case didpool = "DIDPool"
        case digitalRuleSet = "DigitalRuleSet"
        case directoryGroups = "DirectoryGroups"
        case dnclist = "DNCList"
        case document = "Document"
        case dynamicGroup = "DynamicGroup"
        case dynamicSchema = "DynamicSchema"
        case edge = "Edge"
        case edgeGroup = "EdgeGroup"
        case edgeLog = "EdgeLog"
        case edgeLogZip = "EdgeLogZip"
        case edgePcaps = "EdgePcaps"
        case edgePreferences = "EdgePreferences"
        case edgeTraceLevel = "EdgeTraceLevel"
        case emailCampaignSchedule = "EmailCampaignSchedule"
        case emergencyGroup = "EmergencyGroup"
        case enterpriseAgreement = "EnterpriseAgreement"
        case evaluation = "Evaluation"
        case evaluationForm = "EvaluationForm"
        case eventType = "EventType"
        case exports = "Exports"
        case _extension = "Extension"
        case extensionPool = "ExtensionPool"
        case externalMetricsData = "ExternalMetricsData"
        case externalMetricsDefinition = "ExternalMetricsDefinition"
        case externalOrganizationSchema = "ExternalOrganizationSchema"
        case feedback = "Feedback"
        case flow = "Flow"
        case flowMilestone = "FlowMilestone"
        case flowOutcome = "FlowOutcome"
        case forecast = "Forecast"
        case gdprRequest = "GdprRequest"
        case historicalData = "HistoricalData"
        case inboundDomain = "InboundDomain"
        case inboundRoute = "InboundRoute"
        case insightSettings = "InsightSettings"
        case integration = "Integration"
        case ivr = "IVR"
        case knowledgeBase = "KnowledgeBase"
        case knowledgeCategory = "KnowledgeCategory"
        case knowledgeDocument = "KnowledgeDocument"
        case knowledgeDocumentVariation = "KnowledgeDocumentVariation"
        case knowledgeLabel = "KnowledgeLabel"
        case knowledgeSearchFeedback = "KnowledgeSearchFeedback"
        case knowledgeTraining = "KnowledgeTraining"
        case line = "Line"
        case lineBase = "LineBase"
        case location = "Location"
        case managementUnit = "ManagementUnit"
        case maxOrgRoutingUtilizationCapacity = "MaxOrgRoutingUtilizationCapacity"
        case mediaDiagnosticsTraceFile = "MediaDiagnosticsTraceFile"
        case messagingCampaign = "MessagingCampaign"
        case messagingCampaignSchedule = "MessagingCampaignSchedule"
        case metric = "Metric"
        case module = "Module"
        case numberOrder = "NumberOrder"
        case numberPlan = "NumberPlan"
        case oauthclient = "OAuthClient"
        case oauthclientauthorization = "OAuthClientAuthorization"
        case organizationAuthorizationTrust = "OrganizationAuthorizationTrust"
        case organizationAuthorizationUserTrust = "OrganizationAuthorizationUserTrust"
        case organizationFeature = "OrganizationFeature"
        case organizationIntegrationsAccess = "OrganizationIntegrationsAccess"
        case organizationLimits = "OrganizationLimits"
        case organizationSettings = "OrganizationSettings"
        case orphanedRecording = "OrphanedRecording"
        case outboundDomain = "OutboundDomain"
        case outboundRoute = "OutboundRoute"
        case outcome = "Outcome"
        case pcaps = "Pcaps"
        case phone = "Phone"
        case phoneBase = "PhoneBase"
        case planningGroup = "PlanningGroup"
        case policy = "Policy"
        case predictor = "Predictor"
        case product = "Product"
        case profile = "Profile"
        case profileMembers = "ProfileMembers"
        case program = "Program"
        case prompt = "Prompt"
        case promptResource = "PromptResource"
        case queue = "Queue"
        case recording = "Recording"
        case recordingAnnotation = "RecordingAnnotation"
        case recordingKey = "RecordingKey"
        case recordingKeyConfig = "RecordingKeyConfig"
        case recordingSettings = "RecordingSettings"
        case response = "Response"
        case responseAsset = "ResponseAsset"
        case role = "Role"
        case row = "Row"
        case routingTranscriptionSettings = "RoutingTranscriptionSettings"
        case routingUtilizationTag = "RoutingUtilizationTag"
        case rule = "Rule"
        case ruleSet = "RuleSet"
        case schedule = "Schedule"
        case scheduledExports = "ScheduledExports"
        case scheduleGroup = "ScheduleGroup"
        case schema = "Schema"
        case screenRecording = "ScreenRecording"
        case segment = "Segment"
        case sentimentFeedback = "SentimentFeedback"
        case sequence = "Sequence"
        case sequenceSchedule = "SequenceSchedule"
        case serviceGoalTemplate = "ServiceGoalTemplate"
        case sessionType = "SessionType"
        case shiftTrade = "ShiftTrade"
        case site = "Site"
        case skillsGroups = "SkillsGroups"
        case speechTextAnalyticsSettings = "SpeechTextAnalyticsSettings"
        case status = "Status"
        case supportedContent = "SupportedContent"
        case supportFile = "SupportFile"
        case survey = "Survey"
        case surveyForm = "SurveyForm"
        case team = "Team"
        case timeOffLimit = "TimeOffLimit"
        case timeOffPlan = "TimeOffPlan"
        case timeOffRequest = "TimeOffRequest"
        case topic = "Topic"
        case transcriptionSettings = "TranscriptionSettings"
        case trigger = "Trigger"
        case trunk = "Trunk"
        case trunkBase = "TrunkBase"
        case user = "User"
        case userPresence = "UserPresence"
        case voicemailPolicy = "VoicemailPolicy"
        case voicemailUserPolicy = "VoicemailUserPolicy"
        case webhook = "Webhook"
        case workbin = "Workbin"
        case workitem = "Workitem"
        case workPlan = "WorkPlan"
        case workPlanRotation = "WorkPlanRotation"
        case workspace = "Workspace"
        case worktype = "Worktype"
        case wrapupCode = "WrapupCode"
        case wrapUpCodeMapping = "WrapUpCodeMapping"
        case participant = "Participant"
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

