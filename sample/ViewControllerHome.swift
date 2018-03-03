//
//  ViewControllerHome.swift
//  sample
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 [redcode]. All rights reserved.
//

import UIKit

class ViewControllerHome: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openScreenTabs(_ sender: Any) {
        let tabs = storyboard?.instantiateViewController(withIdentifier: "tabs") as? UITabBarController
        
        (tabs!.viewControllers![0] as! ViewControllerProfile).label = "Alterando via tela home"
        
        present(tabs!, animated: true, completion: nil)
    }

}
