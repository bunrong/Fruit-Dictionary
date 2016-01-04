//
//  ContactViewController.swift
//  Fruit Dictionary
//
//  Created by Jung Taesung on 2015. 12. 29..
//  Copyright © 2015년 Code Objective C. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet var aboutContact: UILabel!
    @IBOutlet var aboutApplication: UILabel!
    @IBOutlet var ourApplication: UILabel!
    @IBOutlet var webSite: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var develop: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Appearence.setNavigationFontStyle(self.navigationController!, size: 18.0)
        setFont()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissContactController(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    // MARK: - Set appearence
    private func setFont(){
        Appearence.setLabelFontStyle(18, label: email)
        Appearence.setLabelFontStyle(18, label: webSite)
        Appearence.setLabelFontStyle(18, label: develop)
        Appearence.setLabelFontStyle(20, label: aboutApplication)
        Appearence.setLabelFontStyle(20, label: aboutContact)
        Appearence.setLabelFontStyle(20, label: ourApplication)
    }
    
}
