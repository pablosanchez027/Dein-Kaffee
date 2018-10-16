//
//  Bebidas.swift
//  Dein Kaffee
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class Bebida {
    var nombreBebida : String
    var descripcionBebida : String
    var precioBebida : Int
    var iconoBebida : UIImage
    var imagenBebida : UIImage
    var calificacionBebida : Double
    var comentariosBebida : [Comentario] = []
    var tipoBebida : Int
    
    
    init() {
        nombreBebida = ""
        descripcionBebida = ""
        precioBebida = 0
        iconoBebida = UIImage()
        imagenBebida = UIImage()
        calificacionBebida = 0.0
        comentariosBebida = []
        tipoBebida = 0
    }
    
    init(nombreBebida : String, descripcionBebida : String, precioBebida : Int, iconoBebida : UIImage, imagenBebida : UIImage, calificacionBebida : Double, comentariosBebida : [Comentario], tipoBebida: Int) {
        self.nombreBebida = nombreBebida
        self.descripcionBebida = descripcionBebida
        self.precioBebida = precioBebida
        self.iconoBebida = iconoBebida
        self.imagenBebida = imagenBebida
        self.calificacionBebida = calificacionBebida
        self.comentariosBebida = comentariosBebida
        self.tipoBebida = tipoBebida
    }
}
