//
//  Coach.swift
//  IceReportModels
//
//  Created by Courtney Perreault on 2025-03-02.
//

import Vapor
import Fluent

public final class Coach: Model, Content {
    
    public static let schema = "coaches"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "first_name")
    public var firstName: String
    
    @Field(key: "last_name")
    public var lastName: String
    
    public init(){}
    
    public init(id: UUID? = nil, firstName: String, lastName: String){
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
    }
}
