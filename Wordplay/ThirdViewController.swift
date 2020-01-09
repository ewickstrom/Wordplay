//
//  ThirdViewController.swift
//  Wordplay
//
//  Created by Ella Wickstrom on 10/21/19.
//  Copyright © 2019 Ella Wickstrom. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    var madLibs = MadLibs()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = madLibs.makeStory()
    }
}
