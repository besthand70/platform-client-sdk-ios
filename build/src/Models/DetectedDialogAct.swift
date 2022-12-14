//
// DetectedDialogAct.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DetectedDialogAct: Codable {

    /** The name of the detected dialog act. */
    public var name: String?
    /** The probability of the detected dialog act. */
    public var probability: Double?

    public init(name: String?, probability: Double?) {
        self.name = name
        self.probability = probability
    }


}

