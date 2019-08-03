//
//  ViewController.swift
//  AlertProject
//
//  Created by Gökhür ARIKBOGA on 3.08.2019.
//  Copyright © 2019 Gokhur. All rights reserved.
//

import UIKit

    class ViewController: UIViewController {
        
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func createButtonClicked(_ sender: Any) {
        
        
        let userName  = userNameText.text!
        let pass = passwordText.text!
        var pass2 = password2Text.text!
        let errorMessage1 = "Username is empty"
        let errorMessage2 = "Password is empty"
        let errorMessage3 = "Please re-enter your password"
        let errorMessage4 = "Passwords must be matched"

        
        
        if userName == "" {
            let alert = UIAlertController(title: "Error", message: "\(errorMessage1)", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if pass == "" {
            
            let alert = UIAlertController(title: "Error", message: "\(errorMessage2)", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        } else if pass2 == "" {
            
            let alert = UIAlertController(title: "Error", message: "\(errorMessage3)", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            let copyButton = UIAlertAction(title: "Copy It!", style: UIAlertAction.Style.default) { (UIAlertAction) in
            self.password2Text.text = String(pass)
            }
            alert.addAction(copyButton)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        } else if pass2 != pass {
            let alert = UIAlertController(title: "Error", message: "\(errorMessage4)", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Congratulations!", message: "You Joined US!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        }
        @IBAction func deleteAllClicked(_ sender: Any) {
            self.userNameText.text = ""
            self.passwordText.text = ""
            self.password2Text.text = ""
        }
}
