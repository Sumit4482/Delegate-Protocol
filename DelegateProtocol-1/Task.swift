//
//  Task.swift
//  DelegateProtocol-1
//
//  Created by E5000855 on 27/06/24.
//

import Foundation

class Task {
    var delegate: TaskDelegate?
    func completeTask() {
        print("Task is completing")
        delegate?.taskDidComplete(task: self)
    }
}
