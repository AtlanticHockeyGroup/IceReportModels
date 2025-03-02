//
//  Rating.swift
//  IceReportModels
//
//  Created by Courtney Perreault on 2025-03-02.
//

import Vapor
import Fluent

public final class Rating: Model, Content{
    
    public static let schema = "ratings"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "player_id")
    public var playerId: UUID
    
    @Field(key: "camp_id")
    public var campId: UUID

    
    @Field(key: "skill_id")
    public var skillId: UUID
    
    @Field(key: "value")
    public var value: Int

    @Field(key: "notes")
    public var notes: String
    
    @Field(key: "coach_id")
    public var coachId: UUID
    
    public init(){}
    
    public init(id: UUID? = nil, playerId: UUID, campId: UUID, skillId: UUID, value: Int, notes: String, coachId: UUID){
        self.id = id
        self.playerId = playerId
        self.campId = campId
        self.skillId = skillId
        self.value = value
        self.notes = notes
        self.coachId = coachId
    }
}
