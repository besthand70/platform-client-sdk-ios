//
// WidgetClientConfigV1Http.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class WidgetClientConfigV1Http: Codable {

    public enum WebChatSkin: String, Codable { 
        case basic = "basic"
        case modernCaretSkin = "modern-caret-skin"
    }
    public var webChatSkin: WebChatSkin?
    public var authenticationUrl: String?

    public init(webChatSkin: WebChatSkin?, authenticationUrl: String?) {
        self.webChatSkin = webChatSkin
        self.authenticationUrl = authenticationUrl
    }


}

