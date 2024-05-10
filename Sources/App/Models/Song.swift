//
//  Song.swift
//
//
//  Created by Ronald Ngounou on 5/10/24.
//
import Fluent
import Vapor

// This is how we query the data from the database
final class Song: Model, Content {
    
    static let schema = "songs"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    init() { }
    
    init(id: UUID? = nil, title: String){
        self.id = id
        self.title = title
        
    }
        
        
}
