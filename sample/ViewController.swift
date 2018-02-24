//
//  ViewController.swift
//  sample
//
//  Created by Aluno on 24/02/2018.
//  Copyright © 2018 [redcode]. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSegmentedControlChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = UIColor.red
        case 1:
            self.view.backgroundColor = UIColor.green
        case 2:
            self.view.backgroundColor = UIColor.purple
        case 3:
            self.view.backgroundColor = UIColor.yellow
        case 4:
            self.view.backgroundColor = UIColor.white
        default:
            self.view.backgroundColor = UIColor.black
        }
    }
    
    @IBAction func onSwitchValueChanged(_ uiSwitch: UISwitch) {
        changeVisibility(uiSwitch.isOn)
    }
    
    func changeVisibility(_ visible : Bool){
        imageView?.isHidden = !visible
        segmentedControl?.isHidden = !visible
        label?.isHidden = !visible
    }
}
