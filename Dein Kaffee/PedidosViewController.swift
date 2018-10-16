//
//  PedidosViewController.swift
//  Dein Kaffee
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class PedidosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var pedidos: Pedido?
    
    @IBOutlet weak var tbPedidos: UITableView!
    @IBOutlet weak var lblTotal: UILabel!
    let Pedidos : [Pedido] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Pedidos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellPedidos") as! celdaPedidos
        
        celda.lblPedidos.text = Pedidos[indexPath.row].bebidaPedido
        celda.lblPrecio.text = "$ " + Pedidos[indexPath.row].bebidaPedido
        
        lblTotal.text = "$ " + String(pedidos!.totalPedido)
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Pedidos"
    }
}
