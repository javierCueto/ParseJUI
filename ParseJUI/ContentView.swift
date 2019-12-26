//
//  ContentView.swift
//  ParseJUI
//
//  Created by José Javier Cueto Mejía on 16/12/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkingManager = NetworkingManager()
    var body: some View {
        List(networkingManager.dataList){
            data in
            Text(data.title)
                .font(.title)
                .foregroundColor(.gray)
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
