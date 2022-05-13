//
// WebMessagingEventPresence.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A Presence event. */

public class WebMessagingEventPresence: Codable {

    public enum ModelType: String, Codable { 
        case join = "Join"
    }
    /** Describes the type of Presence event. */
    public var type: ModelType?

    public init(type: ModelType?) {
        self.type = type
    }


}

