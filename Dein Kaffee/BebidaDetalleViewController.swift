//
//  BebidaDetalleViewController.swift
//  Dein Kaffee
//
//  Created by Alumno on 13/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class BebidaDetalleViewController : UIViewController {
    @IBOutlet weak var imgBebida: UIImageView!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    
    @IBOutlet weak var imgCalificacion1: UIImageView!
    @IBOutlet weak var imgCalificacion2: UIImageView!
    @IBOutlet weak var imgCalificacion3: UIImageView!
    @IBOutlet weak var imgCalificacion4: UIImageView!
    @IBOutlet weak var imgCalificacion5: UIImageView!
    
    
    var bebida : Bebida?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bebidaSeleccionada = bebida {
            self.title = bebidaSeleccionada.nombreBebida
            
            lblPrecio.text = String(bebidaSeleccionada.precioBebida)
            lblDescripcion.text = bebidaSeleccionada.descripcionBebida
            imgBebida.image = bebidaSeleccionada.imagenBebida
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToComentarios" {
            let destino = segue.destination as! ComentariosViewController
            
            destino.comentarios = bebida?.comentariosBebida
        }
    }
}
