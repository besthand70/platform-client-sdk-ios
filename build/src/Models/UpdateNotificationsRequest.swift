//
// UpdateNotificationsRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class UpdateNotificationsRequest: Codable {

    /** The notifications to update */
    public var entities: [WfmUserNotification]?

    public init(entities: [WfmUserNotification]?) {
        
        self.entities = entities
        
    }


}

