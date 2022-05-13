//
// ArchitectFlowNotificationErrorDetail.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ArchitectFlowNotificationErrorDetail: Codable {

    public var errorCode: String?
    public var entityId: String?
    public var entityName: String?
    public var fieldName: String?

    public init(errorCode: String?, entityId: String?, entityName: String?, fieldName: String?) {
        self.errorCode = errorCode
        self.entityId = entityId
        self.entityName = entityName
        self.fieldName = fieldName
    }


}

