//
//  AddToDoListViewController.swift
//  ToDoList2
//
//  Created by zhanhyii on 14-9-29.
//  Copyright (c) 2014年 zhanhyii. All rights reserved.
//

import UIKit

class AddToDoListViewController: UIViewController {
    
    @IBOutlet var txtInput : UITextField!
    
    @IBOutlet var tabViewCurrentItem : UITableView!
    
    var toDoItem : ToDoItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Load AddToDoListViewController")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selfDismissed(sender: AnyObject?){
        println("self Dismissed")
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if txtInput != nil{
            println(txtInput.text)
            toDoItem = ToDoItem()
            toDoItem.itemName = txtInput.text;
        }
        
    }
}

