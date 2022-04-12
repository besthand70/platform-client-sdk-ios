//
// SupportCenterSettings.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Settings concerning support center */

public class SupportCenterSettings: Codable {

    public enum RouterType: String, Codable { 
        case hash = "Hash"
        case browser = "Browser"
    }
    /** Whether or not support center is enabled */
    public var enabled: Bool?
    /** The knowledge base for support center */
    public var knowledgeBase: AddressableEntityRef?
    /** Customizable display texts for support center */
    public var customMessages: [SupportCenterCustomMessage]?
    /** Router type for support center */
    public var routerType: RouterType?
    /** Available screens for the support center with its modules */
    public var screens: [SupportCenterScreen]?
    /** Enabled article categories for support center */
    public var enabledCategories: [AddressableEntityRef]?
    /** Style attributes for support center */
    public var styleSetting: SupportCenterStyleSetting?

    public init(enabled: Bool?, knowledgeBase: AddressableEntityRef?, customMessages: [SupportCenterCustomMessage]?, routerType: RouterType?, screens: [SupportCenterScreen]?, enabledCategories: [AddressableEntityRef]?, styleSetting: SupportCenterStyleSetting?) {
        
        self.enabled = enabled
        
        self.knowledgeBase = knowledgeBase
        
        self.customMessages = customMessages
        
        self.routerType = routerType
        
        self.screens = screens
        
        self.enabledCategories = enabledCategories
        
        self.styleSetting = styleSetting
        
    }


}

