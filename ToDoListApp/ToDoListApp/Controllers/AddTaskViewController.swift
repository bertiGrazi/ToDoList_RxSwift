//
//  AddTaskViewController.swift
//  ToDoListApp
//
//  Created by Grazi Berti on 06/04/21.
//

import UIKit
import RxSwift


class AddTaskViewController: UIViewController {

   private let taskSubject = PublishSubject<Task>()
    
    var taskSubjectObservable: Observable<Task> {
        return taskSubject.asObserver()
    }
    
    @IBOutlet weak var prioritySegmetedControl: UISegmentedControl!
    @IBOutlet weak var taskTitleTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        guard let priority = Priority(rawValue: self.prioritySegmetedControl.selectedSegmentIndex), let title = self.taskTitleTextField.text else { return }
        
        let task = Task(title: title, priority: priority)
        taskSubject.onNext(task)
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
