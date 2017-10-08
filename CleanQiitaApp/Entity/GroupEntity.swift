//
//  GroupEntity.swift
//  CleanQiitaApp
//
//  Created by Mizuki on 2017/10/09.
//  Copyright © 2017年 MizukiFurusawa. All rights reserved.
//


import Foundation
import ObjectMapper

public struct GroupEntity {
    public let createdAt: String?
    public let id: Int
    public let name: String?
    public let isPrivate: Bool?
    public let updatedAt: String?
    public let urlName: String?
}

extension GroupEntity: ImmutableMappable {
    
    public init(map: Map) throws {
        createdAt = try? map.value("created_at")
        id = try map.value("id")
        name = try? map.value("name")
        isPrivate = try? map.value("private")
        updatedAt = try? map.value("updated_at")
        urlName = try? map.value("url_name")
    }
    
}

