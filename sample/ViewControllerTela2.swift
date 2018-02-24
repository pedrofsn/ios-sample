//
//  ViewControllerTela2.swift
//  sample
//
//  Created by Aluno on 24/02/2018.
//  Copyright © 2018 [redcode]. All rights reserved.
//

import UIKit

class ViewControllerTela2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    private let paradigms = ["Estruturadas", "Orientadas a objeto"]
    private let languages = [["C", "Pascal"], ["Java", "Swift", "C Sharp"]]
    
    private var paradgimSelected = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        loadImage(name: languages[0][0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0) {
            return paradigms.count
        }
        
        return languages[paradgimSelected].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0) {
            return paradigms[row]
        }
        
        return languages[paradgimSelected][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(component == 0) {
             paradgimSelected = row
            pickerView.reloadComponent(1)
            pickerView.selectRow(0 , inComponent: 1, animated : true)
            loadImage(name: languages[paradgimSelected][0])
        } else {
            loadImage(name: languages[paradgimSelected][row])
        }
    }
    
    private func loadImage(name : String) {
        imageView.image = UIImage(named : name)
    }
    
}
