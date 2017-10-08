//
//  AllItemNetworkRequest.swift
//  CleanQiitaApp
//
//  Created by Mizuki on 2017/10/09.
//  Copyright © 2017年 MizukiFurusawa. All rights reserved.
//


import Foundation
import APIKit
import ObjectMapper
import Networking

public struct GetAllItemListRequest: QiitaRequest {
    
    public typealias Response = [ItemEntity]
    
    private let page: Int?
    private let perPage: Int?
    
    public init(page: Int?, perPage: Int?) {
        self.page = page
        self.perPage = perPage
    }
    
    public var method: HTTPMethod {
        return .get
    }
    
    public var path: String {
        return "/api/v2/items"
    }
    
    public var queryParameters: [String: Any]? {
        
        var parameters: [String: Any]? = [:]
        
        if let page = page {
            parameters?["page"] = page
        }
        
        if let perPage = perPage {
            parameters?["per_page"] = perPage
        }
        
        return parameters
}
