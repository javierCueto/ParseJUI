//
//  NetworkingManager.swift
//  ParseJUI
//
//  Created by José Javier Cueto Mejía on 16/12/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import Foundation


class NetworkingManager: ObservableObject{
    @Published var dataList = [DataListEntry]()
    
    init(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        URLSession.shared
            .dataTask(with: url){
                (data, _, _) in
                guard let data = data else {
                    return
                }
                let dataList = try! JSONDecoder().decode([DataListEntry].self, from: data)
                
                DispatchQueue.main.async {
                    self.dataList = dataList
                    print(self.dataList)
                }
        }.resume()
    }
}
