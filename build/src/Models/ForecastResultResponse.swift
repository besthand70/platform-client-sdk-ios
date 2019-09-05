//
// ForecastResultResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ForecastResultResponse: Codable {

    /** The forecast result.  If null, fetch the result from the url in downloadUrl */
    public var result: RouteGroupList?
    /** The downloadUrl to fetch the result if it is too large to be sent directly */
    public var downloadUrl: String?

    public init(result: RouteGroupList?, downloadUrl: String?) {
        
        self.result = result
        
        self.downloadUrl = downloadUrl
        
    }


}

