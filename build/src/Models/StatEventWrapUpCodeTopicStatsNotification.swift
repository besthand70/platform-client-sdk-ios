//
// StatEventWrapUpCodeTopicStatsNotification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class StatEventWrapUpCodeTopicStatsNotification: Codable {

    public var group: [String:String]?
    public var data: [StatEventWrapUpCodeTopicDatum]?

    public init(group: [String:String]?, data: [StatEventWrapUpCodeTopicDatum]?) {
        
        self.group = group
        
        self.data = data
        
    }


}

