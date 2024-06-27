//
//  TaskDelegate.swift
//  DelegateProtocol-1
//
//  Created by E5000855 on 27/06/24.
//

import Foundation

protocol TaskDelegate: AnyObject {
    func taskDidComplete(task: Task)
}
