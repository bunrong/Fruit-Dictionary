//
//  Appearence.swift
//  Fruit Dictionary
//
//  Created by Jung Taesung on 2015. 12. 29..
//  Copyright © 2015년 Code Objective C. All rights reserved.
//

import Foundation
import UIKit

class Appearence: NSObject{
    
    static func setNavigationFontStyle(navigation: UINavigationController, size: CGFloat){
        navigation.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "KhmerOSBattambang-Bold", size: size)!]
    }
    
    static func setLabelFontStyle(size: CGFloat, label: UILabel){
        label.font = UIFont(name: "KhmerOSBattambang-Bold", size: size)
    }
}