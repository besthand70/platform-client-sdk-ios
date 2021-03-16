//
// PerformanceProfile.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PerformanceProfile: Codable {

    /** The globally unique identifier for the object. */
    public var _id: String?
    /** A name for this performance profile */
    public var name: String?
    /** A description about this performance profile */
    public var _description: String?
    /** Order of the associated metrics. The list should contain valid ids for metrics */
    public var metricOrders: [String]?
    /** The URI for this object */
    public var selfUri: String?

    public init(_id: String?, name: String?, _description: String?, metricOrders: [String]?, selfUri: String?) {
        
        self._id = _id
        
        self.name = name
        
        self._description = _description
        
        self.metricOrders = metricOrders
        
        self.selfUri = selfUri
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _description = "description"
        case metricOrders
        case selfUri
    }


}

