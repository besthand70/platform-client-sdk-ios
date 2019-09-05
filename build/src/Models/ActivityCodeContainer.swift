//
// ActivityCodeContainer.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Container for a map of ActivityCodeId to ActivityCode */

public class ActivityCodeContainer: Codable {

    /** Map of activity code id to activity code */
    public var activityCodes: [String:ActivityCode]?
    /** Version metadata for the associated management unit&#39;s list of activity codes */
    public var metadata: WfmVersionedEntityMetadata?

    public init(activityCodes: [String:ActivityCode]?, metadata: WfmVersionedEntityMetadata?) {
        
        self.activityCodes = activityCodes
        
        self.metadata = metadata
        
    }


}

