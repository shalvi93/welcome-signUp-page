//
//  ViewControllerSignUpFinish.swift
//  welcomeToIMarket
//
//  Created by Sierra 4 on 03/02/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ViewControllerSignUpFinish: UIViewController {
    
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    var nameL = String()
    var lastNameL = String()
    var emailL = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("q \(nameL)")
        nameLabel.text = nameL
        lastNameLabel.text = lastNameL
        emailLabel.text = emailL
        
        
    }
    
    
    @IBAction func backbtn(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
