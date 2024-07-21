//
//  NetworkService.swift
//  UltimateSports
//
//  Created by Khavishini on 21/07/2024.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case noData(error: String)
    case unableToDecode
}

struct NetworkService {
    
    static let shared = NetworkService()
    
    func fetchRequest<T: Codable>(generalType: T.Type, url: String, completion: @escaping (Result<T, Error>) -> Void) {
        
        let baseUrl = "https://www.thesportsdb.com/"
        
        guard let urlString = URL(string: baseUrl + url) else {
            completion(.failure(NetworkError.badUrl))
            return
        }
        print(urlString)
        
        let request = URLRequest(url: urlString)
        URLSession.shared.dataTask(with: request){ (data, response, error) in
            
            guard let data = data else {
                completion(.failure(NetworkError.noData(error: error?.localizedDescription ?? "")))
                return
            }
            
            let result = Result {
                try JSONDecoder().decode(T.self, from: data)
            }
            completion(result)
        }.resume()
    }
}
