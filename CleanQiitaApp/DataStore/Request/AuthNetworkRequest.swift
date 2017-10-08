//
//  AuthNetworkRequest.swift
//  CleanQiitaApp
//
//  Created by Mizuki on 2017/10/09.
//  Copyright © 2017年 MizukiFurusawa. All rights reserved.
//


import Foundation
import APIKit
import Networking

public struct PublishAccessTokenNetworkRequest: QiitaRequest {
    
    public typealias Response = AccessTokenEntity
    
    private let clientId: String
    private let clientSecret: String
    private let code: String
    
    public init(clientId: String, clientSecret: String, code: String) {
        self.clientId = clientId
        self.clientSecret = clientSecret
        self.code = code
    }
    
    public var headerFields: [String : String] {
        return [:]
    }
    
    public var method: HTTPMethod {
        return .post
    }
    
    public var path: String {
        return "/api/v2/access_tokens"
    }
    
    public var parameters: Any? {
        return ["client_id": clientId, "client_secret": clientSecret, "code": code]
    }
    
}
