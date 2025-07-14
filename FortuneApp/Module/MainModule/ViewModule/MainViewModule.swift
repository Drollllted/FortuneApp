//
//  MainViewModule.swift
//  FortuneApp
//
//  Created by Drolllted on 14.07.2025.
//

import Foundation
import SwiftUI

final class MainViewModule: ObservableObject {
    
    @Published var memes: [Meme] = []
    @Published var networkService = NetworkSerivce.shared
    @Published var textFieldText: String = ""
    
    func fetchData() {
        networkService.setupJSON { [weak self] result in
            DispatchQueue.main.async {
                switch result{
                    
                case .success(let data):
                    self?.memes = data.data.memes
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
}
