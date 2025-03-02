//
//  Camp.swift
//  IceReportModels
//
//  Created by Courtney Perreault on 2025-03-02.
//

import Vapor
import Fluent

public final class Camp: Model, Content{
    
    public static let schema = "camps"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "camp_name")
    public var campName: String
    
    @Field(key: "start_date")
    public var startDate: Date
    
    @Field(key: "end_date")
    public var endDate: Date
    
    public init(){}
    
    public init(id: UUID? = nil, campName: String, startDate: Date, endDate: Date){
        self.id = id
        self.campName = campName
        self.startDate = startDate
        self.endDate = endDate
    }
}
