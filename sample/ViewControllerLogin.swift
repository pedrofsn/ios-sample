//
//  ViewControllerLogin.swift
//  sample
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 [redcode]. All rights reserved.
//

import UIKit

class ViewControllerLogin: UIViewController {

    @IBOutlet weak var textFieldUsename: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonLogin(_ sender: UIButton) {
        let username = textFieldUsename.text
        let password = textFieldUsename.text
        
        if(username != nil && password != nil && username == "admin" && password == "admin") {
            login()
        }
    }
    
    private func login() {
        let home = storyboard?.instantiateViewController(withIdentifier: "home") as? ViewControllerHome

        if(home != nil){
            present(home!, animated: true, completion: nil)
        } else {
            print("home is null")
        }
    }
    
}
