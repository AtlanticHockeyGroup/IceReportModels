//
//  Group.swift
//  IceReportModels
//
//  Created by Courtney Perreault on 2025-03-02.
//

import Vapor
import Fluent

public final class Group: Model, Content {
    
    public static let schema = "groups"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "group_name")
    public var groupName: String
    
    // I think this will just be helpful from a routing perspective.
    @Field(key: "camp_id")
    public var campId: UUID
    
    // This could be a camp or group id
    @Field(key: "parent_id")
    public var parentId: UUID?
    
    // Indicates nesting of group. If Tier = 1, parent is camp.
    // If Tier = 2 parent is group with tier = 1
    // If Tier = 3 parent is group with tier = 2
    // If Tier = 3 players will belong to this group.
    @Field(key: "group_tier")
    public var groupTier: Int
    
    public init(){}
    
    public init(id: UUID? = nil, groupName: String, campId: UUID, parentId: UUID?, groupTier: Int ){
        self.id = id
        self.groupName = groupName
        self.campId = campId
        self.parentId = parentId
        self.groupTier = groupTier
    }
}
