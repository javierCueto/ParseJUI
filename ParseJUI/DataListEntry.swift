//
//  DataListEntry.swift
//  ParseJUI
//
//  Created by José Javier Cueto Mejía on 16/12/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import Foundation


struct DataListEntry: Decodable, Identifiable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
