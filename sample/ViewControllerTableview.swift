//
//  ViewControllerTableview.swift
//  sample
//
//  Created by Aluno on 24/02/2018.
//  Copyright © 2018 [redcode]. All rights reserved.
//

import UIKit
import AVFoundation

class ViewControllerTableview: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    private let menu = ["Pizzas", "Bebidas", "Sobremesas"]
    private let itens = [
        ["Calabresa", "California", "Mussarela", "Portuguesa", "Quatro Queijos"],
        ["Cervejas", "Vinhos", "Sucos"],
        ["Salada de Frutas", "Sorvete", "Torta Doce"],
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return menu.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return menu[section]
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = myTableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let obj = itens[indexPath.section][indexPath.row]
        customCell.imageView?.image = UIImage(named : obj)
        customCell.label.text = obj
        return customCell
    }
    
}
