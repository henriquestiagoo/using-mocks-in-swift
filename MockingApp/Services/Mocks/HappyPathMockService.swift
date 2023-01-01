//
//  MockService.swift
//  MockingApp
//
//  Created by Tiago Henriques on 31/12/2022.
//

import Foundation

class HappyPathMockedService: ServiceProtocol {
    
    func getPosts(_ completion: @escaping (Result<[Post], ServiceError>) -> Void) {
        DispatchQueue.main.async {
            completion(.success(Constants.posts))
        }
    }
}
