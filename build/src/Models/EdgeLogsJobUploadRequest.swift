//
// EdgeLogsJobUploadRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EdgeLogsJobUploadRequest: Codable {

    /** A list of file ids to upload. */
    public var fileIds: [String]?

    public init(fileIds: [String]?) {
        
        self.fileIds = fileIds
        
    }


}

