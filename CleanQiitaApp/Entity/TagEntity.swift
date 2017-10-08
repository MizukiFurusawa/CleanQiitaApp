//
//  TagEntity.swift
//  CleanQiitaApp
//
//  Created by Mizuki on 2017/10/09.
//  Copyright © 2017年 MizukiFurusawa. All rights reserved.
//

import Foundation
import ObjectMapper

public struct TagEntity {
    public let name: String?
    public let versions: [String]?
}

extension TagEntity: ImmutableMappable {
    
    public init(map: Map) throws {
        name = try? map.value("name")
        versions = try? map.value("versions")
    }
    
}
