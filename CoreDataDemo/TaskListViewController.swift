//
//  TaskListViewController.swift
//  CoreDataDemo
//
//  Created by Alexey Efimov on 10.05.2021.
//

import UIKit
import CoreData


class TaskListViewController: UITableViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        title = "Task List"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let navBarAppearnce = UINavigationBarAppearance()
        navBarAppearnce.configureWithOpaqueBackground()
        
        navBarAppearnce.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearnce.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navBarAppearnce.backgroundColor = UIColor(
            red: 21/255,
            green: 101/255,
            blue: 192/255,
            alpha: 194/255
        )
        
        navigationController?.navigationBar.standardAppearance = navBarAppearnce
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearnce
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(newTask)
        )
        
        navigationController?.navigationBar.tintColor = .white
        
    }
    
    @objc func newTask() {
        
    }
}
