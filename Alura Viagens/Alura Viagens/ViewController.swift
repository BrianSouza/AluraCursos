//
//  ViewController.swift
//  Alura Viagens
//
//  Created by MacSofisa7933 on 09/01/20.
//  Copyright © 2020 alura. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
    

    @IBOutlet weak var viewPacotes: UIView!
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var tabelaViagens: UITableView!
    let listaViagens:Array<String> = ["Rio de Janeiro","São Paulo","Ceára"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
        self.viewHoteis.layer.cornerRadius = 10
        self.viewPacotes.layer.cornerRadius = 10
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listaViagens[indexPath.row]
        return cell
    }
    

}

