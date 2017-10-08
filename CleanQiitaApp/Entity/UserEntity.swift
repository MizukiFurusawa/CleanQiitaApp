//
//  UserEntity.swift
//  CleanQiitaApp
//
//  Created by Mizuki on 2017/10/09.
//  Copyright © 2017年 MizukiFurusawa. All rights reserved.
//


import Foundation
import ObjectMapper

public struct UserEntity {
    public let description: String?
    public let facebookId: String?
    public let followeesCount: Int?
    public let followersCount: Int?
    public let githubLoginName: String?
    public let id: String
    public let itemsCount: Int?
    public let linkedinId: String?
    public let location: String?
    public let name: String?
    public let organization: String?
    public let permanentId: Int?
    public let profileImageUrl: String?
    public let twitterScreenName: String?
    public let websiteUrl: String?
}

extension UserEntity: ImmutableMappable {
    
    public init(map: Map) throws {
        description = try? map.value("description")
        facebookId = try? map.value("facebook_id")
        followeesCount = try? map.value("followees_count")
        followersCount = try? map.value("followers_count")
        githubLoginName = try? map.value("github_login_name")
        id = try map.value("id")
        itemsCount = try? map.value("items_count")
        linkedinId = try? map.value("linkedin_id")
        location = try? map.value("location")
        name = try? map.value("name")
        organization = try? map.value("organization")
        permanentId = try? map.value("permanent_id")
        profileImageUrl = try? map.value("profile_image_url")
        twitterScreenName = try? map.value("twitter_screen_name")
        websiteUrl = try? map.value("website_url")
    }
    
}

