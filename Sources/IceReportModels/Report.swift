//
//  Report.swift
//  IceReportModels
//
//  Created by Courtney Perreault on 2025-03-02.
//

import Vapor
import Fluent

public final class Report: Model, Content {
    
    public static let schema = "reports"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "player_id")
    public var playerId: UUID
    
    @Field(key: "group_id")
    public var groupId: UUID
    
    @Field(key: "ratings")
    public var ratings: [UUID]
    
    @Field(key: "comments")
    public var comments: String
    
    public init(){}
    
    public init(id: UUID? = nil, playerId: UUID, groupId: UUID, ratings: [UUID], comments: String){
        self.id = id
        self.playerId = playerId
        self.groupId = groupId
        self.ratings = ratings
        self.comments = comments
    }
}
