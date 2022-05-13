//
// ConversationDetailsDatalakeAvailabilityTopicDataAvailabilityChangeNotification.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class ConversationDetailsDatalakeAvailabilityTopicDataAvailabilityChangeNotification: Codable {

    /** Date and time before which data is guaranteed to be available in the datalake */
    public var dataAvailabilityDate: Date?

    public init(dataAvailabilityDate: Date?) {
        self.dataAvailabilityDate = dataAvailabilityDate
    }


}

