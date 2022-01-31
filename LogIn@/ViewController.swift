//
//  ViewController.swift
//  LogIn@
//
//  Created by Икрамджан Абдукадыров on 29/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var UserTextField: UITextField!
    @IBOutlet var PasswordTextField: UITextField!
    
    private let user = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let infVC = navigationVC.topViewController as? infViewController
                infVC?.user = user
            }
        }
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    @IBAction func ButtonLogIn(_ sender: Any) {
        if UserTextField.text != user.login || PasswordTextField.text != user.password {
            showAlert (
                tittle: "Invalid login or password",
                massage: "Please, enter correct login and password"
            )
        }
    }
    @IBAction func RemindButton(_ sender: Any) {
        if (sender as AnyObject).tag == 1 {
            showAlert(tittle: "Ops!", massage: "Your name is \(user.login)")
        } else
        {
            showAlert(tittle: "Ops!", massage: "Your password is \(user.password)")
        }
            
        }
    }
    


extension ViewController {
private func showAlert(tittle: String, massage: String) {
    let alert = UIAlertController(title: tittle, message: massage, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Ok", style: .default) {_ in self.PasswordTextField.text = ""
    }
    alert.addAction(okAction)
    present(alert, animated:  true)
}
}
