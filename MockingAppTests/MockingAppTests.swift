//
//  MockingAppTests.swift
//  MockingAppTests
//
//  Created by Tiago Henriques on 31/12/2022.
//

import XCTest
@testable import MockingApp

final class MockingAppTests: XCTestCase {
    
    func testGetPostsSuccessCase() throws {
        // Given
        let mockedService = MockedService()
        mockedService.result = .success(Constants.posts)
        
        let viewModel = PostsViewModel(service: mockedService)
        viewModel.fetchPosts()

        // Then
        XCTAssertEqual(mockedService.getDataCallCounter, 1)
        XCTAssertEqual(viewModel.posts, Constants.posts)
        XCTAssertNil(viewModel.error)
    }
    
    func testGetPostsFailureCase() throws {
        // Given
        let mockedService = MockedService()
        mockedService.result = .failure(Constants.dummyError)
        
        let viewModel = PostsViewModel(service: mockedService)
        viewModel.fetchPosts()

        // Then
        XCTAssertEqual(mockedService.getDataCallCounter, 1)
        XCTAssertEqual((viewModel.error as? ServiceError), Constants.dummyError)
        XCTAssertEqual(viewModel.posts.count, 0)
    }

}
