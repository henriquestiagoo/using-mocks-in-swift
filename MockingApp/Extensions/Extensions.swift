//
//  Extensions.swift
//  MockingApp
//
//  Created by Tiago Henriques on 31/12/2022.
//

import Foundation

extension JSONDecoder {
    static let snakeCaseDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
}
