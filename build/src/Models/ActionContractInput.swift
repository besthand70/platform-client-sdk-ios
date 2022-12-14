//
// ActionContractInput.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Contract definition. */

public class ActionContractInput: Codable {

    /** Execution input contract */
    public var input: PostInputContract?
    /** Execution output contract */
    public var output: PostOutputContract?

    public init(input: PostInputContract?, output: PostOutputContract?) {
        self.input = input
        self.output = output
    }


}

