//
// BulkResponseResultExternalContactExternalContact.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BulkResponseResultExternalContactExternalContact: Codable {

    public var _id: String?
    public var success: Bool?
    public var entity: ExternalContact?
    public var error: BulkErrorExternalContact?

    public init(_id: String?, success: Bool?, entity: ExternalContact?, error: BulkErrorExternalContact?) {
        self._id = _id
        self.success = success
        self.entity = entity
        self.error = error
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case success
        case entity
        case error
    }


}

