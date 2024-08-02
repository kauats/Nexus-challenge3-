//
//  DAO.swift
//  Nexus(challenge3)
//
//  Created by Giovana Nogueira on 02/08/24.
//

import Foundation
import CodableExtensions

let dao = DAO.instance

@Observable class DAO: Codable {
    static var instance = (try? DAO.load()) ?? DAO()
    
    
    private init() {}
}
