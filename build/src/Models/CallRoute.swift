//
// CallRoute.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class CallRoute: Codable {

    /** A list of CallTargets to be called when the CallRoute is executed */
    public var targets: [CallTarget]?

    public init(targets: [CallTarget]?) {
        self.targets = targets
    }


}

