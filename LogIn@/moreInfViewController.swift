//
//  moreInfViewController.swift
//  LogIn@
//
//  Created by Икрамджан Абдукадыров on 30/1/22.
//

import UIKit

class moreInfViewController: UIViewController {
    var user: User!
    @IBOutlet var bornLabel: UILabel!
    @IBOutlet var instLabel: UILabel!
    @IBOutlet var numberLaber: UILabel!
    @IBOutlet var aboutMe: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bornLabel.text = user.person.burn
        instLabel.text = user.person.ageM
        numberLaber.text = user.person.findMe
        aboutMe.text = user.person.knowMe
    }
    

    

}
