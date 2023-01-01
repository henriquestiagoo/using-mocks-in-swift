//
//  Service.swift
//  MockingApp
//
//  Created by Tiago Henriques on 31/12/2022.
//

import Foundation

protocol ServiceProtocol {
    func getPosts(_ completion: @escaping (Result<[Post], ServiceError>) -> Void)
}

class Service: ServiceProtocol {
    func getPosts(_ completion: @escaping (Result<[Post], ServiceError>) -> Void) {
        guard let url = URL(string: "https://tiagohenriques.vercel.app/api/posts") else { return }
        let urlRequest = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                completion(.failure(.unexpectedError(error.localizedDescription)))
                return
            }
            if let data = data {
                do {
                    let posts = try JSONDecoder.snakeCaseDecoder.decode([Post].self, from: data)
                    DispatchQueue.main.async {
                        completion(.success(posts))
                    }
                } catch {
                    DispatchQueue.main.async {
                        completion(.failure(.errorParsingData(error.localizedDescription)))
                    }
                }
            }
        }
        task.resume()
    }
}
