//
//  SurveyViewController.swift
//  DataMatch
//
//  Created by Jason Carrington on 1/8/18.
//  Copyright © 2018 Frank Kulaszewicz. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {

    @IBOutlet weak var Question: UILabel!
    
    @IBAction func Answer_A(_ sender: Any) {
    }
    @IBAction func Answer_B(_ sender: Any) {
    }
    @IBAction func Answer_C(_ sender: Any) {
    }
    @IBAction func Answer_D(_ sender: Any) {
    }
    @IBAction func Answer_E(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let parsed: ToParse? = parse()
        
        if let parsingJson = parsed{
            print(parsingJson.survey[1].question) //use this to find the values of interest, gets the values of the fields in the specified struct
        }
        
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
