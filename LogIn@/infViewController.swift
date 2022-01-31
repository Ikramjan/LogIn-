//
//  infViewController.swift
//  LogIn@
//
//  Created by Икрамджан Абдукадыров on 29/1/22.
//

import UIKit

class infViewController: UIViewController {
    var user: User!
    @IBOutlet var labelNameSurN: UILabel!
    @IBOutlet var imageUser: UIImageView! {
    didSet {
        imageUser.layer.cornerRadius = imageUser.frame.height / 2
      }
    }
    override func viewDidLoad() {
        labelNameSurN.text = user.person.fullName
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfVC = segue.destination as? moreInfViewController else { return }
        moreInfVC.user = user
    }
    

}
