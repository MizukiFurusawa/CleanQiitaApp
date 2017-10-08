//
//  ItemNetworkRequest.swift
//  CleanQiitaApp
//
//  Created by Mizuki on 2017/10/09.
//  Copyright © 2017年 MizukiFurusawa. All rights reserved.
//

import Foundation
import Networking
import APIKit

public struct GetItemNetworkRequest: QiitaRequest {
    
    public typealias Response = ItemEntity
    
    private let itemId: String
    
    public init(itemId: String) {
        self.itemId = itemId
    }
    
    public var method: HTTPMethod {
        return .get
    }
    
    public var path: String {
        return "/api/v2/items/\(itemId)"
    }
    
}
