//
//  AddTaskViewController.swift
//  ToDoListApp
//
//  Created by Grazi Berti on 06/04/21.
//

import UIKit

class AddTaskViewController: UIViewController {

    
    @IBOutlet weak var prioritySegmetedControl: UISegmentedControl!
    @IBOutlet weak var taskTitleTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let priority = Priority(rawValue: self.prioritySegmetedControl.selectedSegmentIndex), let title = self.taskTitleTextField.text else { return }
        
        let task = Task(title: title, priority: priority)
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
