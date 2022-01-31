//
//  WelcomeViewController.swift
//  LogIn@
//
//  Created by Икрамджан Абдукадыров on 29/1/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var labelWelcome: UILabel!
    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelWelcome.text = "Welcome, \(user.person.fullName)!"
        
        // Do any additional setup after loading the view.
    }
    
  
    
    @IBAction func ButtoneLogOut() {
        dismiss(animated: true)
    }
    

}
