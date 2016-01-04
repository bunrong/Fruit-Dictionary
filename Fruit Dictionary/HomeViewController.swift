//
//  ViewController.swift
//  Fruit Dictionary
//
//  Created by Jung Taesung on 2015. 12. 29..
//  Copyright © 2015년 Code Objective C. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    // MARK: - Connection Outlet
    
    @IBOutlet var tableView: UITableView!
    
    // MARK: - ViewController Overriding Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Appearence.setNavigationFontStyle(self.navigationController!, size: 18.0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - UITableViewDelegate and UITableDataSource
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : UITableViewCell! = tableView.dequeueReusableCellWithIdentifier("Cell")
        cell.textLabel?.text = "Hello";
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("detail", sender: nil)
    }
        
    // MARK: - Connection Action
    
    @IBAction func infoAction(sender: AnyObject) {
        print("Action")
    }

}

