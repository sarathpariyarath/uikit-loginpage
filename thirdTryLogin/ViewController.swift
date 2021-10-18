//
//  ViewController.swift
//  thirdTryLogin
//
//  Created by Sarath P on 17/10/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if UserDefaults.standard.bool(forKey: "loggedIn") == true{
            let inside = self.storyboard?.instantiateViewController(withIdentifier: "InsideViewControllerID") as! InsideViewController
            
            self.navigationController?.pushViewController(inside, animated: false)
        }
    }


}

