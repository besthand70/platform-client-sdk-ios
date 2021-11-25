//
// CreateTimeOffLimitRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contains property values of time off limit to be created */

public class CreateTimeOffLimitRequest: Codable {

    public enum Granularity: String, Codable { 
        case daily = "Daily"
    }
    /** Granularity choice for time off limit. If not specified, &#39;Daily&#39; is assumed */
    public var granularity: Granularity?
    /** The default limit value in minutes per granularity.If not specified, then 0 is assumed, which means there are no time off minutes available */
    public var defaultLimitMinutes: Int?

    public init(granularity: Granularity?, defaultLimitMinutes: Int?) {
        
        self.granularity = granularity
        
        self.defaultLimitMinutes = defaultLimitMinutes
        
    }


}

