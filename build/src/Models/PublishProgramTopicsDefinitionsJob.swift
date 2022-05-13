//
// PublishProgramTopicsDefinitionsJob.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PublishProgramTopicsDefinitionsJob: Codable {

    public enum State: String, Codable { 
        case completed = "Completed"
        case failed = "Failed"
    }
    public var _id: String?
    public var state: State?

    public init(_id: String?, state: State?) {
        self._id = _id
        self.state = state
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case state
    }


}

