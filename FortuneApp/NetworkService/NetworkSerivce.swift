//
//  NetworkSerivce.swift
//  FortuneApp
//
//  Created by Drolllted on 13.07.2025.
//

import Foundation

class NetworkSerivce {
    static let shared = NetworkSerivce()
    
    private init(){}
    
    func setupJSON(completion: @escaping (Result<WelcomeJSON, Error>) -> Void) {
        let url = "https://api.imgflip.com/get_memes"
        
        guard let urlString = URL(string: url) else {return}
        
        let task = URLSession.shared.dataTask(with: urlString) { data, _, _ in
            guard let data = data else {return}
            
            do{
                let jsonDecoder = JSONDecoder()
                let json = try jsonDecoder.decode(WelcomeJSON.self, from: data)
                print(json)
                completion(.success(json))
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
