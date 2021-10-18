//
//  LoginPageViewController.swift
//  thirdTryLogin
//
//  Created by Sarath P on 17/10/21.
//

import UIKit

class LoginPageViewController: UIViewController {

    @IBOutlet weak var errorMsg: UILabel!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet var loginBtn: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login Here"
        errorMsg.isHidden = true
        
        if UserDefaults.standard.bool(forKey: "loggedIn") == true{
            let inside = self.storyboard?.instantiateViewController(withIdentifier: "InsideViewControllerID") as! InsideViewController
            
            self.navigationController?.pushViewController(inside, animated: false)
        }
    }
    

    @IBAction func LoginButton(_ sender: Any) {
        if (userName.text != "alexa") || (passWord.text != "123"){
            errorMsg.isHidden = false
            
        }else if (userName.text == "alexa") || (passWord.text == "123") {
            errorMsg.isHidden = true
            let inside = self.storyboard?.instantiateViewController(withIdentifier: "InsideViewControllerID") as! InsideViewController
            self.navigationController?.pushViewController(inside, animated: true)
            UserDefaults.standard.set(true, forKey: "loggedIn")
            let dialogMessage = UIAlertController(title: "Alert", message: "Login Success", preferredStyle: .alert)
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
             })
            
            //Add OK button to a dialog message
            dialogMessage.addAction(ok)
            // Present Alert to
            self.present(dialogMessage, animated: true, completion: nil)
        }
        
    }
}

