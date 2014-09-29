//
//  ToDoItem.swift
//  ToDoList2
//
//  Created by zhanhyii on 14-9-29.
//  Copyright (c) 2014年 zhanhyii. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    
    override init(){
        completed = false
        creationDate = NSDate.date()
    }
    
    var itemName:String?
    var completed:Bool
    var creationDate:NSDate
    
}
