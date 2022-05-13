//
// WaitlistPositionListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A list of the waitlist positions for each time off request day separately. If time off request is not waitlisted, then then there are no items in the list for such time off request. */

public class WaitlistPositionListing: Codable {

    public var entities: [WaitlistPosition]?

    public init(entities: [WaitlistPosition]?) {
        self.entities = entities
    }


}

