//
//  SecondViewController.swift
//  Wordplay
//
//  Created by Ella Wickstrom on 10/21/19.
//  Copyright © 2019 Ella Wickstrom. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var wordFive: UITextField!
    
    @IBOutlet weak var wordSix: UITextField!
    
    @IBOutlet weak var wordSeven: UITextField!
    
    @IBOutlet weak var wordEight: UITextField!
    
    var madLibs = MadLibs()
    var word5 = ""
    var word6 = ""
    var word7 = ""
    var word8 = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onButtonTapped(_ sender: Any) {
        if wordFive.text?.count != 0 &&
        wordSix.text?.count != 0 &&
        wordSeven.text?.count != 0 &&
        wordEight.text?.count != 0
            {
            word5 = String(wordFive.text!)
            word6 = String(wordSix.text!)
            word7 = String(wordSeven.text!)
            word8 = String(wordEight.text!)
                
                madLibs.word5 = word5
                madLibs.word6 = word6
                madLibs.word7 = word7
                madLibs.word8 = word8
                performSegue(withIdentifier: "SecondSegue", sender: Any?.self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ThirdViewController
        dvc.madLibs = self.madLibs
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
