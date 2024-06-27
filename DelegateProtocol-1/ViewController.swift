//
//  ViewController.swift
//  DelegateProtocol-1
//
//  Created by E5000855 on 02/06/24.
//

import UIKit

class ViewController: UIViewController {

    private let task = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        task.delegate = self
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        let button = UIButton(type: .system)
        button.setTitle("Complete Task", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.addTarget(self, action: #selector(completeTaskButtonTapped), for: .touchUpInside)
        
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc private func completeTaskButtonTapped() {
        task.completeTask()
    }
}

extension ViewController: TaskDelegate {
    func taskDidComplete(task: Task) {
        print("Task completed in ViewController")
        let alertController = UIAlertController(title: "Task Completed", message: "The task has been completed successfully.", preferredStyle: .actionSheet)
             
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
