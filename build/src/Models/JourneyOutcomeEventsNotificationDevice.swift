//
// JourneyOutcomeEventsNotificationDevice.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class JourneyOutcomeEventsNotificationDevice: Codable {

    public enum Category: String, Codable { 
        case desktop = "desktop"
        case mobile = "mobile"
        case tablet = "tablet"
        case other = "other"
    }
    public var type: String?
    public var isMobile: Bool?
    public var screenHeight: Int?
    public var screenWidth: Int?
    public var fingerprint: String?
    public var osFamily: String?
    public var osVersion: String?
    public var category: Category?

    public init(type: String?, isMobile: Bool?, screenHeight: Int?, screenWidth: Int?, fingerprint: String?, osFamily: String?, osVersion: String?, category: Category?) {
        
        self.type = type
        
        self.isMobile = isMobile
        
        self.screenHeight = screenHeight
        
        self.screenWidth = screenWidth
        
        self.fingerprint = fingerprint
        
        self.osFamily = osFamily
        
        self.osVersion = osVersion
        
        self.category = category
        
    }


}

