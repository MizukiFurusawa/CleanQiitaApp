//
//  StockNetworkRequest.swift
//  CleanQiitaApp
//
//  Created by Mizuki on 2017/10/09.
//  Copyright © 2017年 MizukiFurusawa. All rights reserved.
//


import Foundation
import APIKit
import ObjectMapper
import Networking

public struct GetItemStockersRequest: QiitaRequest {
    
    public typealias Response = [UserEntity]
    
    let itemId: String
    
    public var method: HTTPMethod {
        return .get
    }
    
    public var path: String {
        return "/api/v2/items/\(itemId)/stockers"
    }
    
    public var queryParameters: [String: Any]? {
        return ["per_page": 100]
    }
    
}

public struct GetHasStockRequest: QiitaRequest {
    
    public typealias Response = Bool
    
    let itemId: String
    
    public var method: HTTPMethod {
        return .get
    }
    
    public var path: String {
        return "/api/v2/items/\(itemId)/stock"
    }
    
    public func intercept(object: Any, urlResponse: HTTPURLResponse) throws -> Any {
        switch urlResponse.statusCode {
        case 200..<300:
            return true
        default:
            return false
        }
    }
    
    public func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Bool {
        return object as! Bool
    }
    
}

public struct PutStockRequest: QiitaRequest {
    
    public typealias Response = Void
    
    let itemId: String
    
    public var method: HTTPMethod {
        return .put
    }
    
    public var path: String {
        return "/api/v2/items/\(itemId)/stock"
    }
    
}

public struct DeleteStockRequest: QiitaRequest {
    
    public typealias Response = Void
    
    let itemId: String
    
    public var method: HTTPMethod {
        return .delete
    }
    
    public var path: String {
        return "/api/v2/items/\(itemId)/stock"
    }
    
}
