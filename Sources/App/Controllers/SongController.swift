//
//  SongController.swift
//
//
//  Created by Ronald Ngounou on 5/10/24.
//

import Fluent
import Vapor

struct SongController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let songs = routes.grouped("songs")
        songs.get(use: index)
    }
    
    // /songs route
    func index(req: Request) throws -> EventLoopFuture<[Song]> {
        return Song.query(on: req.db).all()
        
    }
    
}
