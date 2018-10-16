//
//  ComentarViewController.swift
//  Dein Kaffee
//
//  Created by Alumno on 15/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit


class ComentarViewController : UIViewController {
    
    @IBOutlet weak var txtUsuario: UITextField!
    @IBOutlet weak var txtComentar: UITextField!
    
    @IBOutlet weak var sldCalificacion: UISlider!
    
    @IBOutlet weak var imgCalificacion1: UIImageView!
    @IBOutlet weak var imgCalificacion2: UIImageView!
    @IBOutlet weak var imgCalificacion3: UIImageView!
    @IBOutlet weak var imgCalificacion4: UIImageView!
    @IBOutlet weak var imgCalificacion5: UIImageView!
    
    
    var bebida : Bebida?
    
    @IBAction func doTapComentar(_ sender: Any) {
        let usuario = txtUsuario.text!
        let comentario = txtComentar.text!
        let calificacionSlider = Int(sldCalificacion.value)
        
        switch calificacionSlider {
        case 1:
            imgCalificacion1.isHidden = false
            imgCalificacion2.isHidden = true
            imgCalificacion3.isHidden = true
            imgCalificacion4.isHidden = true
            imgCalificacion5.isHidden = true
        case 2:
            imgCalificacion1.isHidden = false
            imgCalificacion2.isHidden = false
            imgCalificacion3.isHidden = true
            imgCalificacion4.isHidden = true
            imgCalificacion5.isHidden = true
        case 3:
            imgCalificacion1.isHidden = false
            imgCalificacion2.isHidden = false
            imgCalificacion3.isHidden = false
            imgCalificacion4.isHidden = true
            imgCalificacion5.isHidden = true
        case 4:
            imgCalificacion1.isHidden = false
            imgCalificacion2.isHidden = false
            imgCalificacion3.isHidden = false
            imgCalificacion4.isHidden = false
            imgCalificacion5.isHidden = true
        case 5:
            imgCalificacion1.isHidden = false
            imgCalificacion2.isHidden = false
            imgCalificacion3.isHidden = false
            imgCalificacion4.isHidden = false
            imgCalificacion5.isHidden = false
        default:
            imgCalificacion1.isHidden = true
            imgCalificacion2.isHidden = true
            imgCalificacion3.isHidden = true
            imgCalificacion4.isHidden = true
            imgCalificacion5.isHidden = true
        }
        
        bebida?.comentariosBebida.append(Comentario(nombreComentario: usuario, textoComentario: comentario, calificacionComentario: calificacionSlider))
        
        self.navigationController?.popViewController(animated: true)
    }
    
}

