//
//  AppUsers.swift
//  Pieces
//
//  Created by Ellah Nzikoba on 2/7/22.
//

import Foundation
import SwiftUI


class AppUsers: ObservableObject {
    var users: [User: Diary] = [
        User(name: "Sophie", profile: Image("profile"), theme: .light): Diary()
    ]
    
    
    
    
}
