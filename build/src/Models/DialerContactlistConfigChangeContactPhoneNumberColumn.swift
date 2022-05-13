//
// DialerContactlistConfigChangeContactPhoneNumberColumn.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class DialerContactlistConfigChangeContactPhoneNumberColumn: Codable {

    /** name of the phone column */
    public var columnName: String?
    /** type of the phone column, for example, 'cell' or 'home' */
    public var type: String?
    /** name of the column indicating the timezone to be considered for determining callable times */
    public var callableTimeColumn: String?

    public init(columnName: String?, type: String?, callableTimeColumn: String?) {
        self.columnName = columnName
        self.type = type
        self.callableTimeColumn = callableTimeColumn
    }


}

