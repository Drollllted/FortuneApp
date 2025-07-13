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
    
    func setupJSON() {
        let url = "https://api.imgflip.com/get_memes"
        
        guard let urlString = URL(string: url) else {return}
        
        let task = URLSession.shared.dataTask(with: urlString) { data, _, _ in
            guard let data = data else {return}
            
            do{
                let json = String(data: data, encoding: .utf8)
                print(json)
            } catch {
                
            }
        }
        task.resume()
    }
}
