//
// TextbotsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TextbotsAPI {
    
    
    
    /**
     
     Send an intent to a bot to start a dialog/interact with it via text
     
     - parameter postTextRequest: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postTextbotsBotsExecute(postTextRequest: PostTextRequest, completion: @escaping ((_ data: PostTextResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postTextbotsBotsExecuteWithRequestBuilder(postTextRequest: postTextRequest)
        requestBuilder.execute { (response: Response<PostTextResponse>?, error) -> Void in
            do {
                if let e = error {
                    completion(nil, e)
                } else if let r = response {
                    try requestBuilder.decode(r)
                    completion(response?.body, error)
                } else {
                    completion(nil, error)
                }
            } catch {
                completion(nil, error)
            }
        }
    }

    /**
     
     Send an intent to a bot to start a dialog/interact with it via text
     
     - POST /api/v2/textbots/bots/execute
     - This will either start a bot with the given id or relay a communication to an existing bot session.
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "googleDialogFlow" : {
    "key" : "{}"
  },
  "slots" : {
    "key" : "aeiou"
  },
  "amazonLex" : {
    "key" : "{}"
  },
  "genesysDialogEngine" : {
    "key" : "{}"
  },
  "replyMessages" : [ {
    "text" : "aeiou",
    "type" : "aeiou",
    "content" : [ {
      "template" : {
        "footer" : {
          "text" : "aeiou"
        },
        "header" : {
          "text" : "aeiou",
          "media" : "",
          "type" : "aeiou",
          "parameters" : [ {
            "name" : "aeiou",
            "text" : "aeiou"
          } ]
        },
        "language" : "aeiou",
        "id" : "aeiou",
        "body" : {
          "text" : "aeiou",
          "parameters" : [ "" ]
        }
      },
      "quickReply" : {
        "image" : "aeiou",
        "payload" : "aeiou",
        "action" : "aeiou",
        "id" : "aeiou",
        "text" : "aeiou"
      },
      "postback" : {
        "payload" : "aeiou",
        "id" : "aeiou",
        "text" : "aeiou"
      },
      "attachment" : {
        "filename" : "aeiou",
        "sha256" : "aeiou",
        "mime" : "aeiou",
        "mediaType" : "aeiou",
        "id" : "aeiou",
        "text" : "aeiou",
        "url" : "aeiou"
      },
      "location" : {
        "address" : "aeiou",
        "latitude" : 1.3579000000000001069366817318950779736042022705078125,
        "text" : "aeiou",
        "url" : "aeiou",
        "longitude" : 1.3579000000000001069366817318950779736042022705078125
      },
      "reactions" : [ {
        "reactionType" : "aeiou",
        "count" : 123
      } ],
      "list" : {
        "submitLabel" : "aeiou",
        "components" : [ {
          "image" : "aeiou",
          "rmid" : "aeiou",
          "description" : "aeiou",
          "id" : "aeiou",
          "type" : "aeiou",
          "title" : "aeiou",
          "actions" : ""
        } ],
        "description" : "aeiou",
        "id" : "aeiou",
        "title" : "aeiou",
        "listType" : "aeiou",
        "actions" : ""
      },
      "contentType" : "aeiou",
      "generic" : {
        "image" : "aeiou",
        "components" : [ {
          "id" : "aeiou",
          "text" : "aeiou",
          "title" : "aeiou",
          "actions" : ""
        } ],
        "description" : "aeiou",
        "id" : "aeiou",
        "video" : "aeiou",
        "title" : "aeiou",
        "actions" : {
          "urlTarget" : "aeiou",
          "commandName" : "aeiou",
          "textback" : "aeiou",
          "context" : {
            "key" : "{}"
          },
          "url" : "aeiou"
        }
      },
      "mention" : {
        "image" : "aeiou",
        "firstName" : "aeiou",
        "lastName" : "aeiou",
        "idType" : "aeiou",
        "nickname" : "aeiou",
        "id" : "aeiou",
        "email" : "aeiou"
      }
    } ]
  } ],
  "intentName" : "aeiou",
  "botCorrelationId" : "aeiou",
  "botState" : "aeiou"
}}]
     
     - parameter postTextRequest: (body)  

     - returns: RequestBuilder<PostTextResponse> 
     */
    open class func postTextbotsBotsExecuteWithRequestBuilder(postTextRequest: PostTextRequest) -> RequestBuilder<PostTextResponse> {
        let path = "/api/v2/textbots/bots/execute"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: postTextRequest)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<PostTextResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

}
