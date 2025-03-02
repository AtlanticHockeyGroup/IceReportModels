//
//  Skill.swift
//  IceReportModels
//
//  Created by Courtney Perreault on 2025-03-02.
//

import Vapor
import Fluent

public final class Skill: Model, Content{
    
    public static let schema = "skills"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "name_en")
    public var nameEn: String
    
    @Field(key: "name_fr")
    public var nameFr: String
    
    @Field(key: "desc_en")
    public var descEn: String
    
    @Field(key: "desc_fr")
    public var descFr: String
    
    public init(){}
    
    public init(id: UUID? = nil, nameEn: String, nameFr: String, descEn: String, descFr: String){
        self.id = id
        self.nameEn = nameEn
        self.nameFr = nameFr
        self.descEn = descEn
        self.descFr = descFr
    }
}
