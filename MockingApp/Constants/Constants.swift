//
//  Constants.swift
//  MockingApp
//
//  Created by Tiago Henriques on 01/01/2023.
//

import Foundation

struct Constants {
    static let posts = [
        Post(
            id: 0,
            name: "Using GitHub Actions to update my GitHub profile 🤖",
            summary: "Take advantage of GitHub Actions to update your GitHub profile.",
            publishedAt: "2022-12-29",
            postUrl: "https://tiagohenriques.vercel.app/blog/using-github-actions-to-update-my-github-profile",
            githubUrl: "https://github.com/henriquestiagoo/henriquestiagoo"
        )
    ]
    
    static let dummyError = ServiceError.unexpectedError("Dummy error")
}
