//
// BotAggregationView.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class BotAggregationView: Codable {

    public enum Target: String, Codable { 
        case nbotsessions = "nBotSessions"
        case obotintent = "oBotIntent"
        case obotsessionturn = "oBotSessionTurn"
        case obotslot = "oBotSlot"
        case tbotsession = "tBotSession"
    }
    public enum Function: String, Codable { 
        case rangebound = "rangeBound"
    }
    /** Target metric name */
    public var target: Target?
    /** A unique name for this view. Must be distinct from other views and built-in metric names. */
    public var name: String?
    /** Type of view you wish to create */
    public var function: Function?
    /** Range of numbers for slicing up data */
    public var range: AggregationRange?

    public init(target: Target?, name: String?, function: Function?, range: AggregationRange?) {
        
        self.target = target
        
        self.name = name
        
        self.function = function
        
        self.range = range
        
    }


}

