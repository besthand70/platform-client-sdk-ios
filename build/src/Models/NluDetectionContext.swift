//
// NluDetectionContext.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class NluDetectionContext: Codable {

    /** Restrict detection to this intent. */
    public var intent: ContextIntent?
    /** Use this entity to restrict detection. */
    public var entity: ContextEntity?

    public init(intent: ContextIntent?, entity: ContextEntity?) {
        
        self.intent = intent
        
        self.entity = entity
        
    }


}

