//
//  ComprarViewController.swift
//  Dein Kaffee
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class ComprarViewController : UIViewController {
    
    @IBOutlet weak var lblTituloBebida: UILabel!
    @IBOutlet weak var lblIngrediente1: UILabel!
    @IBOutlet weak var lblIngrediente2: UILabel!
    @IBOutlet weak var lblIngrediente3: UILabel!
    @IBOutlet weak var imgBebida: UIImageView!
    @IBOutlet weak var lblPrecioBebida: UILabel!
    
    
    @IBOutlet weak var stpIngrediente1: UIStepper!
    @IBOutlet weak var stpIngrediente2: UIStepper!
    @IBOutlet weak var stpIngrediente3: UIStepper!
    
    @IBOutlet weak var lblIngrediente1Counter: UILabel!
    @IBOutlet weak var lblIngrediente2Counter: UILabel!
    @IBOutlet weak var lblIngrediente3Counter: UILabel!
    
    
    var bebida : Bebida?
    var precioBebida : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Comprar"
        
        if let bebidaSeleccionada = bebida {
            lblTituloBebida.text = bebidaSeleccionada.nombreBebida
            imgBebida.image = bebidaSeleccionada.iconoBebida
            lblPrecioBebida.text = "$ " + String(bebidaSeleccionada.precioBebida)
            precioBebida = bebidaSeleccionada.precioBebida
        }
        
        switch bebida?.tipoBebida {
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
            stpIngrediente3.isHidden = true
            lblIngrediente3Counter.isHidden = true
        default:
            lblIngrediente1.isHidden = true
            stpIngrediente1.isHidden = true
            lblIngrediente1Counter.isHidden = true
            lblIngrediente2.isHidden = true
            stpIngrediente2.isHidden = true
            lblIngrediente2Counter.isHidden = true
            stpIngrediente3.isHidden = true
            lblIngrediente3.isHidden = true
            lblIngrediente3Counter.isHidden = true
        }
    }
    
    @IBAction func stpIngrediente1Action(_ sender: UIStepper) {
        lblIngrediente1Counter.text = String(Int(sender.value))
    }
    
    @IBAction func stpIngrediente2Action(_ sender: UIStepper) {
        lblIngrediente2Counter.text = String(Int(sender.value))
    }
    
    @IBAction func stpIngrediente3Action(_ sender: UIStepper) {
        lblIngrediente3Counter.text = String(Int(sender.value))
    }
    
    
    @IBAction func doTapComprar(_ sender: Any) {
        let nombre = lblTituloBebida.text!
        let ingrediente1 = Int(lblIngrediente1Counter.text!)!
        let ingrediente2 = Int(lblIngrediente2Counter.text!)!
        let ingrediente3 = Int(lblIngrediente3Counter.text!)!
        let precio = precioBebida
    
        
        Datos.Pedidos.append(Pedido(bebidaPedido: nombre, ingrediente1Pedido: ingrediente1, ingrediente2Pedido: ingrediente2, ingrediente3Pedido: ingrediente3, precioPedido: precio, tipoPedido: (bebida?.tipoBebida)!))
        
        self.navigationController?.popViewController(animated: true)
        
        performSegue(withIdentifier: "goToCompra", sender: self)
       
    }
    
}
