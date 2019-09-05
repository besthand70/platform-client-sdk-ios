//
// CampaignStats.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CampaignStats: Codable {

    /** Information regarding the campaign&#39;s connect rate */
    public var contactRate: ConnectRate?
    /** Number of available agents not currently being utilized */
    public var idleAgents: Int?
    /** Number of effective available agents not currently being utilized */
    public var effectiveIdleAgents: Double?
    /** Calls per agent adjusted by pace */
    public var adjustedCallsPerAgent: Double?
    /** Number of campaign calls currently ongoing */
    public var outstandingCalls: Int?
    /** Number of campaign calls currently scheduled */
    public var scheduledCalls: Int?

    public init(contactRate: ConnectRate?, idleAgents: Int?, effectiveIdleAgents: Double?, adjustedCallsPerAgent: Double?, outstandingCalls: Int?, scheduledCalls: Int?) {
        
        self.contactRate = contactRate
        
        self.idleAgents = idleAgents
        
        self.effectiveIdleAgents = effectiveIdleAgents
        
        self.adjustedCallsPerAgent = adjustedCallsPerAgent
        
        self.outstandingCalls = outstandingCalls
        
        self.scheduledCalls = scheduledCalls
        
    }


}

