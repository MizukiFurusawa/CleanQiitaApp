//
//  AccessTokenEntity.swift
//  CleanQiitaApp
//
//  Created by Mizuki on 2017/10/09.
//  Copyright © 2017年 MizukiFurusawa. All rights reserved.
//

import Foundation
import ObjectMapper

public struct AccessTokenEntity {
    public let clientId: String?
    public let scopes: [String]?
    public let token: String?
}

extension AccessTokenEntity: ImmutableMappable {
    
    public init(map: Map) throws {
        clientId = try? map.value("client_id")
        scopes = try? map.value("scopes")
        token = try? map.value("token")
    }
    
}
