//
// PublishDraftInput.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Draft to be published */

public class PublishDraftInput: Codable {

    /** The current draft version. */
    public var version: Int?

    public init(version: Int?) {
        
        self.version = version
        
    }


}

