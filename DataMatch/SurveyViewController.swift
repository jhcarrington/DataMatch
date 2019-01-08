//
//  SurveyViewController.swift
//  DataMatch
//
//  Created by Frank on 12/31/18.
//  Copyright © 2018 Frank Kulaszewicz. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {

    var answers: [Int] = []
    
    @IBOutlet weak var Question: UILabel!
    
    @IBAction func Answer_A(_ sender: Any) {
        answers.append(0);
        // Code to transition to next question and answers
    }
    @IBAction func Answer_B(_ sender: Any) {
        answers.append(1);
        // ""
    }
    @IBAction func Answer_C(_ sender: Any) {
        answers.append(2);
        // ""
    }
    @IBAction func Answer_D(_ sender: Any) {
        answers.append(3);
        // ""
    }
    @IBAction func Answer_E(_ sender: Any) {
        answers.append(4);
        // ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
