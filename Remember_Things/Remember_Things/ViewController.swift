//
//  ViewController.swift
//  Remember_Things
//
//  Created by Matthew Sacco on 2017-03-09.
//  Copyright © 2017 Matthew Sacco. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {
    
    var list = [MemoryObject]()

    @IBOutlet weak var titleField: NSTextField!
    @IBOutlet weak var informationField: NSTextField!
    @IBOutlet var outputField: NSTextView!
    var textStorage: NSTextStorage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textStorage = NSTextStorage()
        var layoutManager = NSLayoutManager()
        textStorage.addLayoutManager(layoutManager)
        var textContainer = NSTextContainer(containerSize: outputField.frame.size)
        layoutManager.addTextContainer(textContainer)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func addToList(_ sender: Any) {
        if titleField.stringValue != nil && informationField.stringValue != nil{
            let NewMemory = MemoryObject(title: titleField.stringValue, info: informationField.stringValue)
            list.append(NewMemory)
        }
        refreshData()
    }
    
    func refreshData(){
        outputField.string? = "test String"
    }


}

