//
//  MockedService.swift
//  MockingAppTests
//
//  Created by Tiago Henriques on 01/01/2023.
//

import Foundation
@testable import MockingApp

class MockedService: ServiceProtocol {
    var getDataCallCounter = 0
    var result: Result<[Post], ServiceError>!
    
    func getPosts(_ completion: @escaping (Result<[Post], ServiceError>) -> Void) {
        getDataCallCounter += 1
        completion(result)
    }
}
