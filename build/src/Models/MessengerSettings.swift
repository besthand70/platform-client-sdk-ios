//
// MessengerSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Settings concerning messenger */

public class MessengerSettings: Codable {

    /** Whether or not messenger is enabled */
    public var enabled: Bool?
    /** The style settings for messenger */
    public var styles: MessengerStyles?
    /** The launcher button settings for messenger */
    public var launcherButton: LauncherButtonSettings?
    /** The file upload settings for messenger */
    public var fileUpload: FileUploadSettings?

    public init(enabled: Bool?, styles: MessengerStyles?, launcherButton: LauncherButtonSettings?, fileUpload: FileUploadSettings?) {
        
        self.enabled = enabled
        
        self.styles = styles
        
        self.launcherButton = launcherButton
        
        self.fileUpload = fileUpload
        
    }


}

