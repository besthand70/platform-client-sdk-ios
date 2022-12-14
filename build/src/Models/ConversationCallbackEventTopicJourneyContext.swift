//
// ConversationCallbackEventTopicJourneyContext.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationCallbackEventTopicJourneyContext: Codable {

    public var customer: ConversationCallbackEventTopicJourneyCustomer?
    public var customerSession: ConversationCallbackEventTopicJourneyCustomerSession?
    public var triggeringAction: ConversationCallbackEventTopicJourneyAction?

    public init(customer: ConversationCallbackEventTopicJourneyCustomer?, customerSession: ConversationCallbackEventTopicJourneyCustomerSession?, triggeringAction: ConversationCallbackEventTopicJourneyAction?) {
        self.customer = customer
        self.customerSession = customerSession
        self.triggeringAction = triggeringAction
    }


}

