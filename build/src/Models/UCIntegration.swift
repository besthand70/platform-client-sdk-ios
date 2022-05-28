//
// UCIntegration.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** UC Integration UI configuration data */

public class UCIntegration: Codable {

    public enum IntegrationPresenceSource: String, Codable { 
        case microsoftTeams = "MicrosoftTeams"
        case zoomPhone = "ZoomPhone"
    }
    /** The globally unique identifier for the object. */
    public var _id: String?
    public var name: String?
    /** ucIntegrationKey */
    public var ucIntegrationKey: String?
    /** integrationPresenceType */
    public var integrationPresenceSource: IntegrationPresenceSource?
    /** pbxPermission */
    public var pbxPermission: String?
    /** icon */
    public var icon: UCIcon?
    /** i10n */
    public var i10n: [String:UCI10n]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, ucIntegrationKey: String?, integrationPresenceSource: IntegrationPresenceSource?, pbxPermission: String?, icon: UCIcon?, i10n: [String:UCI10n]?, selfUri: String?) {
        self._id = _id
        self.name = name
        self.ucIntegrationKey = ucIntegrationKey
        self.integrationPresenceSource = integrationPresenceSource
        self.pbxPermission = pbxPermission
        self.icon = icon
        self.i10n = i10n
        self.selfUri = selfUri
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case ucIntegrationKey
        case integrationPresenceSource
        case pbxPermission
        case icon
        case i10n
        case selfUri
    }


}

