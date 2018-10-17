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
    
    var totalCompra :Int = 0
    @IBOutlet weak var tbPedidos: UITableView!
    @IBOutlet weak var lblTotal: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datos.Pedidos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellPedidos") as! celdaPedidos
        
        celda.lblPedidos.text = Datos.Pedidos[indexPath.row].bebidaPedido
        celda.lblPrecio.text = "$ " + "\(Datos.Pedidos[indexPath.row].precioPedido)"
        
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTotal.text = "$ " + String(totalCompra)
        
        self.title = "Pedidos"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ("goToPedido") {
            let destino = segue.destination as! PedidoDetalleViewController
            
            destino.pedido = Datos.Pedidos[(tbPedidos.indexPathForSelectedRow?.row)!]
        }
    }
}
