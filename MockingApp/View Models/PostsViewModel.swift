//
//  PostsViewModel.swift
//  MockingApp
//
//  Created by Tiago Henriques on 31/12/2022.
//

import Foundation

class PostsViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var error: Error?
    private let service: ServiceProtocol
    
    init(service: ServiceProtocol) {
        self.service = service
    }
    
    public func fetchPosts() {
        service.getPosts { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .failure(let error):
                self.error = error
                
            case .success(let posts):
                self.posts = posts.reversed()
            }
        }
    }
}
