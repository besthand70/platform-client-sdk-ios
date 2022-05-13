//
// ConversationCobrowseEventTopicJourneyContext.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationCobrowseEventTopicJourneyContext: Codable {

    public var customer: ConversationCobrowseEventTopicJourneyCustomer?
    public var customerSession: ConversationCobrowseEventTopicJourneyCustomerSession?
    public var triggeringAction: ConversationCobrowseEventTopicJourneyAction?

    public init(customer: ConversationCobrowseEventTopicJourneyCustomer?, customerSession: ConversationCobrowseEventTopicJourneyCustomerSession?, triggeringAction: ConversationCobrowseEventTopicJourneyAction?) {
        self.customer = customer
        self.customerSession = customerSession
        self.triggeringAction = triggeringAction
    }


}

