//
//  SadPathMockService.swift
//  MockingApp
//
//  Created by Tiago Henriques on 01/01/2023.
//

import Foundation

class SadPathMockedService: ServiceProtocol {
    
    func getPosts(_ completion: @escaping (Result<[Post], ServiceError>) -> Void) {
        DispatchQueue.main.async {
            completion(.failure(Constants.dummyError))
        }
    }
}
