//
// AddConversationResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class AddConversationResponse: Codable {

    /** The conversation reference */
    public var conversation: ConversationReference?
    /** The appointment reference */
    public var appointment: CoachingAppointmentReference?

    public init(conversation: ConversationReference?, appointment: CoachingAppointmentReference?) {
        self.conversation = conversation
        self.appointment = appointment
    }


}

