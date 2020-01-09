//
//  ViewController.swift
//  Wordplay
//
//  Created by Ella Wickstrom on 10/16/19.
//  Copyright © 2019 Ella Wickstrom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordOne: UITextField!
    
    @IBOutlet weak var wordTwo: UITextField!
    
    @IBOutlet weak var wordThree: UITextField!
    
    @IBOutlet weak var wordFour: UITextField!
    
    var madLibs = MadLibs()
    var word1 = ""
    var word2 = ""
    var word3 = ""
    var word4 = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextButtonTapped(_ sender: Any) {
        if wordOne.text?.count != 0 &&
        wordTwo.text?.count != 0 &&
        wordThree.text?.count != 0 &&
        wordFour.text?.count != 0
            {
            word1 = String(wordOne.text!)
            word2 = String(wordTwo.text!)
            word3 = String(wordThree.text!)
            word4 = String(wordFour.text!)
                
                madLibs.word1 = word1
                madLibs.word2 = word2
                madLibs.word3 = word3
                madLibs.word4 = word4
                performSegue(withIdentifier: "FirstSegue", sender: Any?.self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! SecondViewController
        dvc.madLibs = self.madLibs
    }
    
}

