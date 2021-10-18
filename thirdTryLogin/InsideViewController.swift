//
//  InsideViewController.swift
//  thirdTryLogin
//
//  Created by Sarath P on 17/10/21.
//

import UIKit

class InsideViewController: UIViewController {

    @IBOutlet weak var signOutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func SignOut(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        UserDefaults.standard.set(false, forKey: "loggedIn")
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



