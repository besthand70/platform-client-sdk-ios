//
// EdgeChangeTopicEdge.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class EdgeChangeTopicEdge: Codable {

    public enum OnlineStatus: String, Codable { 
        case online = "ONLINE"
        case offline = "OFFLINE"
    }
    public var _id: String?
    public var onlineStatus: OnlineStatus?

    public init(_id: String?, onlineStatus: OnlineStatus?) {
        self._id = _id
        self.onlineStatus = onlineStatus
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case onlineStatus
    }


}

