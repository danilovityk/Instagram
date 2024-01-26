//
//  ViewController.swift
//  Instagram
//
//  Created by Danik on 17.12.2023.
//

import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
        handleNotAuthenticated();
    }
    
    func handleNotAuthenticated(){
        
        if Auth.auth().currentUser == nil {    // check if the user not is logged in
            // display login page
            let loginVC = LoginViewController();
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false);
            
        }
        
    }

}

