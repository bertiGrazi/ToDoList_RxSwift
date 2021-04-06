//
//  Task.swift
//  ToDoListApp
//
//  Created by Grazi Berti on 06/04/21.
//

import Foundation

enum  Priority: Int {
    case high
    case medium
    case low
}
struct Task {
    let title: String
    let priority: Priority
}
