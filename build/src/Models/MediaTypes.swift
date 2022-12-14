//
// MediaTypes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Media types */

public class MediaTypes: Codable {

    /** Specify allowed media types for inbound and outbound messages. If this field is empty, all inbound and outbound media will be blocked. */
    public var allow: MediaTypeAccess?

    public init(allow: MediaTypeAccess?) {
        self.allow = allow
    }


}

