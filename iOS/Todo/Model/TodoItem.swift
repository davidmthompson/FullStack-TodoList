//
//  TodoItem.swift
//  Todo
//
//  Created by david thompson on 2/26/26.
//

import Foundation

enum ItemStatus: String, CaseIterable{
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Archived"
}

struct TodoItem : Identifiable{
    
    let id = UUID().uuidString
    let title: String
    let desc: String?
    let itemStatus: ItemStatus
    let createionDate: Date = Date()
    let lastUpdate: Date = Date()
    
}


let mockData: [TodoItem] = [
    TodoItem(
        title: "Buy Groceries",
        desc: "Need milk, eggs, and flour for the weekend cake.",
        itemStatus: .completed
    ),
    TodoItem(
        title: "Finish Project Proposal",
        desc: "Complete the budget section and send to the manager.",
        itemStatus: .inProgress
    ),
    TodoItem(
        title: "Call Mom",
        desc: nil, // Testing optional description
        itemStatus: .notStarted
    ),
    TodoItem(
        title: "Gym Session",
        desc: "Leg day! Don't skip the squats.",
        itemStatus: .notStarted
    ),
    TodoItem(
        title: "Fix Sink",
        desc: "The kitchen faucet is leaking again.",
        itemStatus: .inProgress
    )
]
