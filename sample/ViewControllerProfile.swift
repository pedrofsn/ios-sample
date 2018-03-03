//
//  ViewControllerProfile.swift
//  sample
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 [redcode]. All rights reserved.
//

import UIKit

class ViewControllerProfile: UIViewController {

    @IBOutlet weak var textViewLabel: UITextView!
    var label : String = "Este é o meu perfil via SWIFT 4"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewLabel.text = label
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
