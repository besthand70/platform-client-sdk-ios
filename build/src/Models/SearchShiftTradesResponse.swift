//
// SearchShiftTradesResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class SearchShiftTradesResponse: Codable {

    /** The shift trades that match the search criteria */
    public var trades: [SearchShiftTradeResponse]?

    public init(trades: [SearchShiftTradeResponse]?) {
        
        self.trades = trades
        
    }


}

