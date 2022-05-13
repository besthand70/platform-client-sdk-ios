//
// PatchBuReschedulingOptionsRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class PatchBuReschedulingOptionsRequest: Codable {

    /** Per-management unit rescheduling options to update */
    public var managementUnits: [PatchBuReschedulingOptionsManagementUnitRequest]?

    public init(managementUnits: [PatchBuReschedulingOptionsManagementUnitRequest]?) {
        self.managementUnits = managementUnits
    }


}

