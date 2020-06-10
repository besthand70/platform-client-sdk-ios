//
// UploadUrlRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public class UploadUrlRequest: Codable {

    /** Name of the file to upload. It must not start with a dot and not end with a forward slash. Whitespace and the following characters are not allowed: \\{^}%`]\&quot;&gt;[~&lt;#| */
    public var fileName: String?
    /** Content MD-5 of the file to upload */
    public var contentMd5: String?
    /** The number of seconds the presigned URL is valid for (from 1 to 604800 seconds). If none provided, defaults to 600 seconds */
    public var signedUrlTimeoutSeconds: Int?

    public init(fileName: String?, contentMd5: String?, signedUrlTimeoutSeconds: Int?) {
        
        self.fileName = fileName
        
        self.contentMd5 = contentMd5
        
        self.signedUrlTimeoutSeconds = signedUrlTimeoutSeconds
        
    }


}
