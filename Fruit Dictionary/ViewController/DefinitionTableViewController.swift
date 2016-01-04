//
//  DefinitionTableViewController.swift
//  Fruit Dictionary
//
//  Created by Jung Taesung on 2015. 12. 29..
//  Copyright © 2015년 Code Objective C. All rights reserved.
//

import UIKit

class DefinitionTableViewController: UITableViewController {

    @IBOutlet var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionTitle : UILabel = UILabel()
        sectionTitle.frame = CGRectMake(20, 6, 300, 30)
        sectionTitle.backgroundColor = UIColor.clearColor()
        sectionTitle.textColor = UIColor.grayColor()
        sectionTitle.shadowColor = UIColor.whiteColor()
        sectionTitle.shadowOffset = CGSizeMake(0.0, 1.0)
        Appearence.setLabelFontStyle(18, label: sectionTitle)
        if section == 0 {
            sectionTitle.text = "ពាក្យ"
        }else{
            sectionTitle.text = "ការពន្យល់"
        }
        let view : UIView = UIView(frame: CGRectMake(0, 0, tableView.bounds.size.width, tableView.bounds.size.height))
        view.addSubview(sectionTitle)
        return view
    }
    
    @IBAction func backAction(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}
