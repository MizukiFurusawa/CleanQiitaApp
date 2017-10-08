//
//  ItemEntity.swift
//  CleanQiitaApp
//
//  Created by Mizuki on 2017/10/09.
//  Copyright © 2017年 MizukiFurusawa. All rights reserved.
//


import Foundation
import ObjectMapper

public struct ItemEntity {
    public let renderedBody: String?
    public let body: String?
    public let coediting: Bool?
    public let createdAt: String?
    public let group: GroupEntity?
    public let id: String?
    public let isPrivate: Bool?
    public let tagList: [TagEntity]?
    public let title: String?
    public let updatedAt: String?
    public let url: String?
    public let user: UserEntity?
}

extension ItemEntity: ImmutableMappable {
    
    public init(map: Map) throws {
        renderedBody = try? map.value("rendered_body")
        body = try? map.value("body")
        coediting = try? map.value("coediting")
        createdAt = try? map.value("created_at")
        group = try? map.value("group")
        id = try map.value("id")
        isPrivate = try? map.value("private")
        tagList = try? map.value("tags")
        title = try? map.value("title")
        updatedAt = try? map.value("updated_at")
        url = try? map.value("url")
        user = try? map.value("user")
    }
    
}
