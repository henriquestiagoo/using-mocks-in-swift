//
//  ServiceError.swift
//  MockingApp
//
//  Created by Tiago Henriques on 01/01/2023.
//

import Foundation

enum ServiceError: Error, Equatable {
    case errorParsingData(String)
    case unexpectedError(String)
}
