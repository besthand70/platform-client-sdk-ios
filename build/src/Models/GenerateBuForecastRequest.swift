//
// GenerateBuForecastRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class GenerateBuForecastRequest: Codable {

    /** The description for the forecast */
    public var _description: String?
    /** The number of weeks this forecast covers */
    public var weekCount: Int?

    public init(_description: String?, weekCount: Int?) {
        
        self._description = _description
        
        self.weekCount = weekCount
        
    }

    public enum CodingKeys: String, CodingKey { 
        case _description = "description"
        case weekCount
    }


}

