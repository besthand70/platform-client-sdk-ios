//
// TextbotsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class TextbotsAPI {
    
    
    public enum BotType_getTextbotsBotsSearch: String { 
        case genesysBotConnector = "GenesysBotConnector"
        case genesysDialogEngine = "GenesysDialogEngine"
        case amazonLex = "AmazonLex"
        case googleDialogFlowES = "GoogleDialogFlowES"
        case googleDialogFlowCX = "GoogleDialogFlowCX"
        case nuanceDlg = "NuanceDlg"
        case genesysBotFlow = "GenesysBotFlow"
    }

    
    
    
    
    
    
    
    
    /**
     
     Find bots using the currently configured friendly name or ID.
     
     - parameter botType: (query) Bot types (optional)
     - parameter botName: (query) Bot name (optional)
     - parameter botId: (query) Bot IDs (optional)
     - parameter pageSize: (query) The maximum results to return (optional, default to 25)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTextbotsBotsSearch(botType: [String]? = nil, botName: String? = nil, botId: [String]? = nil, pageSize: Int? = nil, completion: @escaping ((_ data: BotSearchResponseEntityListing?,_ error: Error?) -> Void)) {
        let requestBuilder = getTextbotsBotsSearchWithRequestBuilder(botType: botType, botName: botName, botId: botId, pageSize: pageSize)
        requestBuilder.execute { (response: Response<BotSearchResponseEntityListing>?, error) -> Void in
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
     
     Find bots using the currently configured friendly name or ID.
     
     - GET /api/v2/textbots/bots/search
     - The name does allow case-insensitive partial string matches or by IDs (up to 50), but not both at the same time. Optionally you can limit the scope of the search by providing one or more bot types.  You can specify the maximum results to return, up to a limit of 100
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "entities" : [ {
    "botType" : "aeiou",
    "selfUri" : "aeiou",
    "name" : "aeiou",
    "description" : "aeiou",
    "id" : "aeiou"
  } ]
}}]
     
     - parameter botType: (query) Bot types (optional)
     - parameter botName: (query) Bot name (optional)
     - parameter botId: (query) Bot IDs (optional)
     - parameter pageSize: (query) The maximum results to return (optional, default to 25)

     - returns: RequestBuilder<BotSearchResponseEntityListing> 
     */
    open class func getTextbotsBotsSearchWithRequestBuilder(botType: [String]? = nil, botName: String? = nil, botId: [String]? = nil, pageSize: Int? = nil) -> RequestBuilder<BotSearchResponseEntityListing> {
        let path = "/api/v2/textbots/bots/search"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        
            
            
        let body: Data? = nil
            
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            
            "botType": botType, 
            
            "botName": botName, 
            
            "botId": botId, 
            
            "pageSize": pageSize?.encodeToJSON()
            
        ])

        let requestBuilder: RequestBuilder<BotSearchResponseEntityListing>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", url: url!, body: body)
    }

    
    
    
    
    
    /**
     
     Issue a bot flow turn event
     
     - parameter sessionId: (path) The bot flow session ID, typically obtained from &#39;POST /api/v2/textbots/botflows/sessions&#39; 
     - parameter turnRequest: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postTextbotsBotflowsSessionTurns(sessionId: String, turnRequest: TextBotFlowTurnRequest, completion: @escaping ((_ data: TextBotFlowTurnResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postTextbotsBotflowsSessionTurnsWithRequestBuilder(sessionId: sessionId, turnRequest: turnRequest)
        requestBuilder.execute { (response: Response<TextBotFlowTurnResponse>?, error) -> Void in
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
     
     Issue a bot flow turn event
     
     - POST /api/v2/textbots/botflows/sessions/{sessionId}/turns
     - Send a turn event to an executing bot flow and produce the next action to take.
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "previousTurn" : {
    "id" : "aeiou"
  },
  "nextActionExit" : {
    "outputData" : {
      "variables" : {
        "key" : "{}"
      }
    },
    "reason" : "aeiou",
    "flowOutcomes" : [ "" ],
    "flowLocation" : "",
    "reasonExtendedInfo" : "aeiou",
    "activeIntent" : "aeiou"
  },
  "nextActionWaitForInput" : {
    "modeConstraints" : {
      "text" : {
        "languagePreferences" : [ "aeiou" ]
      }
    }
  },
  "id" : "aeiou",
  "nextActionType" : "aeiou",
  "nextActionDisconnect" : {
    "reason" : "aeiou",
    "flowOutcomes" : [ {
      "dateStart" : "2000-01-23T04:56:07.000+0000",
      "outcomeValue" : "aeiou",
      "outcomeId" : "aeiou",
      "dateEnd" : "2000-01-23T04:56:07.000+0000",
      "milestones" : [ {
        "sequence" : 123456789,
        "dateReached" : "2000-01-23T04:56:07.000+0000",
        "id" : "aeiou"
      } ]
    } ],
    "flowLocation" : {
      "actionNumber" : 123,
      "sequenceName" : "aeiou",
      "actionName" : "aeiou"
    },
    "reasonExtendedInfo" : "aeiou"
  },
  "prompts" : {
    "outputLanguage" : "aeiou",
    "textPrompts" : {
      "segments" : [ {
        "format" : {
          "flags" : [ "aeiou" ]
        },
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
          "buttonResponse" : {
            "payload" : "aeiou",
            "id" : "aeiou",
            "text" : "aeiou",
            "type" : "aeiou"
          },
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
          "carousel" : {
            "cards" : [ "" ]
          },
          "generic" : {
            "image" : "aeiou",
            "components" : [ {
              "title" : "aeiou",
              "actions" : ""
            } ],
            "description" : "aeiou",
            "video" : "aeiou",
            "title" : "aeiou",
            "actions" : {
              "urlTarget" : "aeiou",
              "textback" : "aeiou",
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
            "email" : "aeiou",
            "additionalIds" : [ {
              "type" : "aeiou",
              "value" : "aeiou"
            } ]
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
          "contentType" : "aeiou",
          "card" : {
            "image" : "aeiou",
            "defaultAction" : {
              "payload" : "aeiou",
              "text" : "aeiou",
              "type" : "aeiou",
              "url" : "aeiou"
            },
            "description" : "aeiou",
            "video" : "aeiou",
            "title" : "aeiou",
            "actions" : [ "" ]
          },
          "story" : {
            "replyToId" : "aeiou",
            "type" : "aeiou",
            "url" : "aeiou"
          }
        } ]
      } ]
    }
  }
}}]
     
     - parameter sessionId: (path) The bot flow session ID, typically obtained from &#39;POST /api/v2/textbots/botflows/sessions&#39; 
     - parameter turnRequest: (body)  

     - returns: RequestBuilder<TextBotFlowTurnResponse> 
     */
    open class func postTextbotsBotflowsSessionTurnsWithRequestBuilder(sessionId: String, turnRequest: TextBotFlowTurnRequest) -> RequestBuilder<TextBotFlowTurnResponse> {
        var path = "/api/v2/textbots/botflows/sessions/{sessionId}/turns"
        let sessionIdPreEscape = "\(sessionId)"
        let sessionIdPostEscape = sessionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sessionId}", with: sessionIdPostEscape, options: .literal, range: nil)
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: turnRequest)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TextBotFlowTurnResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
    /**
     
     Create an execution instance of a bot flow definition.
     
     - parameter launchRequest: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postTextbotsBotflowsSessions(launchRequest: TextBotFlowLaunchRequest, completion: @escaping ((_ data: TextBotFlowLaunchResponse?,_ error: Error?) -> Void)) {
        let requestBuilder = postTextbotsBotflowsSessionsWithRequestBuilder(launchRequest: launchRequest)
        requestBuilder.execute { (response: Response<TextBotFlowLaunchResponse>?, error) -> Void in
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
     
     Create an execution instance of a bot flow definition.
     
     - POST /api/v2/textbots/botflows/sessions
     - The launch is asynchronous; use the returned instance ID to post turns to it using 'POST /api/v2/textbots/botflows/sessions/{sessionId}/turns'.
     - OAuth:
       - type: oauth2
       - name: PureCloud OAuth
     - examples: [{contentType=application/json, example={
  "id" : "aeiou"
}}]
     
     - parameter launchRequest: (body)  

     - returns: RequestBuilder<TextBotFlowLaunchResponse> 
     */
    open class func postTextbotsBotflowsSessionsWithRequestBuilder(launchRequest: TextBotFlowLaunchRequest) -> RequestBuilder<TextBotFlowLaunchResponse> {
        let path = "/api/v2/textbots/botflows/sessions"
        let URLString = PureCloudPlatformClientV2API.basePath + path
        
        let body = JSONEncodingHelper.encodingParameters(forEncodableObject: launchRequest)
        
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TextBotFlowLaunchResponse>.Type = PureCloudPlatformClientV2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", url: url!, body: body)
    }

    
    
    
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
  "genesysBotConnector" : {
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
      "buttonResponse" : {
        "payload" : "aeiou",
        "id" : "aeiou",
        "text" : "aeiou",
        "type" : "aeiou"
      },
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
      "carousel" : {
        "cards" : [ "" ]
      },
      "generic" : {
        "image" : "aeiou",
        "components" : [ {
          "title" : "aeiou",
          "actions" : ""
        } ],
        "description" : "aeiou",
        "video" : "aeiou",
        "title" : "aeiou",
        "actions" : {
          "urlTarget" : "aeiou",
          "textback" : "aeiou",
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
        "email" : "aeiou",
        "additionalIds" : [ {
          "type" : "aeiou",
          "value" : "aeiou"
        } ]
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
      "contentType" : "aeiou",
      "card" : {
        "image" : "aeiou",
        "defaultAction" : {
          "payload" : "aeiou",
          "text" : "aeiou",
          "type" : "aeiou",
          "url" : "aeiou"
        },
        "description" : "aeiou",
        "video" : "aeiou",
        "title" : "aeiou",
        "actions" : [ "" ]
      },
      "story" : {
        "replyToId" : "aeiou",
        "type" : "aeiou",
        "url" : "aeiou"
      }
    } ]
  } ],
  "intentName" : "aeiou",
  "botCorrelationId" : "aeiou",
  "botState" : "aeiou",
  "nuanceMixDlg" : {
    "key" : "{}"
  }
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
