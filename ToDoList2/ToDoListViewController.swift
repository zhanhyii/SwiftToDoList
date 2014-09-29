//
//  ViewController.swift
//  ToDoList2
//
//  Created by zhanhyii on 14-9-29.
//  Copyright (c) 2014年 zhanhyii. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    var toDoItems : [ToDoItem] = [ToDoItem]()
    
    func loadInitialData(){
        var item1 = ToDoItem()
        item1.itemName = "ToDo Item 1"
        toDoItems.append(item1)
        
        var item2 = ToDoItem()
        item2.itemName = "ToDo Item 2"
        toDoItems.append(item2)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Load ToDoListViewController")
//        
//        let background = UIImage(named:"bg.jpeg")
//        self.view.backgroundColor = UIColor(patternImage: background)
        
        loadInitialData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ToDoListTableView"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        var toDoItem = toDoItems[indexPath.row]
        cell.textLabel?.text = toDoItem.itemName
        return cell
    }
    
    @IBAction func unwindToList(sender: UIStoryboardSegue!){
        println("unwindToList")
        let source = sender.sourceViewController as AddToDoListViewController
        var item = source.toDoItem
        if (item != nil){
            toDoItems.append(item)
            tableView.reloadData()
        }
    }

}

