//
//  Post.swift
//  MockingApp
//
//  Created by Tiago Henriques on 31/12/2022.
//

import Foundation

struct Post: Codable, Equatable {
    let id: Int
    let name: String
    let summary: String
    let publishedAt: String
    let postUrl: String
    var githubUrl: String?
}
