//
// VoicemailOrganizationPolicy.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class VoicemailOrganizationPolicy: Codable {

    /** Whether voicemail is enabled for this organization */
    public var enabled: Bool?
    /** The organization&#39;s default number of seconds to ring a user&#39;s phone before a call is transferred to voicemail */
    public var alertTimeoutSeconds: Int?
    /** The configuration for user PINs to access their voicemail from a phone */
    public var pinConfiguration: PINConfiguration?
    /** The extension for voicemail retrieval.  The default value is *86. */
    public var voicemailExtension: String?
    /** If this is true, a PIN is required when accessing a user&#39;s voicemail from a phone. */
    public var pinRequired: Bool?
    /** Whether user should be prompted with a confirmation prompt when connecting to a Group Ring call */
    public var interactiveResponseRequired: Bool?
    /** Whether email notifications are sent for new voicemails in the organization. If false, new voicemail email notifications are not be sent for the organization overriding any user or group setting. */
    public var sendEmailNotifications: Bool?
    /** Removes any PII from emails. This overrides any analogous group configuration value. This is always true if HIPAA is enabled or unknown for an organization. */
    public var disableEmailPii: Bool?
    /** The date the policy was last modified. Date time is represented as an ISO-8601 string. For example: yyyy-MM-ddTHH:mm:ss[.mmm]Z */
    public var modifiedDate: Date?

    public init(enabled: Bool?, alertTimeoutSeconds: Int?, pinConfiguration: PINConfiguration?, voicemailExtension: String?, pinRequired: Bool?, interactiveResponseRequired: Bool?, sendEmailNotifications: Bool?, disableEmailPii: Bool?, modifiedDate: Date?) {
        
        self.enabled = enabled
        
        self.alertTimeoutSeconds = alertTimeoutSeconds
        
        self.pinConfiguration = pinConfiguration
        
        self.voicemailExtension = voicemailExtension
        
        self.pinRequired = pinRequired
        
        self.interactiveResponseRequired = interactiveResponseRequired
        
        self.sendEmailNotifications = sendEmailNotifications
        
        self.disableEmailPii = disableEmailPii
        
        self.modifiedDate = modifiedDate
        
    }


}

