//
//  Player.swift
//  IceReportModels
//
//  Created by Courtney Perreault on 2025-03-02.
//

import Vapor
import Fluent

public final class Player: Model, Content{
    
    public static let schema = "players"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "first_name")
    public var firstName: String
    
    @Field(key: "last_name")
    public var lastName: String
    
    @Field(key: "group_id")
    public var groupId: UUID
    
    @Field(key: "camp_id")
    public var campId: UUID
    
    public init(){
        
    }
    
    public init(id: UUID? = nil, firstName: String, lastName: String, groupId: UUID, campId: UUID){
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.groupId = groupId
        self.campId = campId
    }
}
