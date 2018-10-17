//
//  PedidoDetalleViewController.swift
//  Dein Kaffee
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class PedidoDetalleViewController: UIViewController {
    
    @IBOutlet weak var lblIngrediente1: UILabel!
    @IBOutlet weak var lblIngrediente2: UILabel!
    @IBOutlet weak var lblIngrediente3: UILabel!
    
    @IBOutlet weak var lblIngrediente1Cantidad: UILabel!
    @IBOutlet weak var lblIngrediente2Cantidad: UILabel!
    @IBOutlet weak var lblIngrediente3Cantidad: UILabel!
    
    @IBOutlet weak var lblTotal: UILabel!
    
    @IBOutlet weak var imgPedido: UIImageView!
    
    var pedido : Pedido?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pedidoSeleccionado = pedido {
            self.title = pedidoSeleccionado.bebidaPedido
            lblTotal.text = String(pedidoSeleccionado.precioPedido)
            
            switch pedido?.tipoPedido {
            case 1:
                lblIngrediente1.text = "Leche"
                lblIngrediente2.text = "Azúcar"
                lblIngrediente3.text = "Canela"
            case 2:
                lblIngrediente1.text = "Canela"
                lblIngrediente2.text = "Crema"
                lblIngrediente3.text = "Oreo"
            case 3:
                lblIngrediente1.text = "Limón"
                lblIngrediente2.text = "Miel de abeja"
                lblIngrediente3.isHidden = true
                lblIngrediente3Cantidad.isHidden = true
            default:
                lblIngrediente1.isHidden = true
                lblIngrediente1Cantidad.isHidden = true
                lblIngrediente2.isHidden = true
                lblIngrediente2Cantidad.isHidden = true
                lblIngrediente3.isHidden = true
                lblIngrediente3Cantidad.isHidden = true
            }
            
        }
    }
}
