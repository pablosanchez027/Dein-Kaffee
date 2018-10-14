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
    var precioBebida : Double
    var iconoBebida : UIImage
    var imagenBebida : UIImage
    var calificacionBebida : Double
    var comentariosBebida : [Comentario] = []
    
    
    init() {
        nombreBebida = ""
        descripcionBebida = ""
        precioBebida = 0.0
        iconoBebida = UIImage()
        imagenBebida = UIImage()
        calificacionBebida = 0.0
        comentariosBebida = []
    }
    
    init(nombreBebida : String, descripcionBebida : String, precioBebida : Double, iconoBebida : UIImage, imagenBebida : UIImage, calificacionBebida : Double, comentariosBebida : [Comentario]) {
        self.nombreBebida = nombreBebida
        self.descripcionBebida = descripcionBebida
        self.precioBebida = precioBebida
        self.iconoBebida = iconoBebida
        self.imagenBebida = imagenBebida
        self.calificacionBebida = calificacionBebida
        self.comentariosBebida = comentariosBebida
    }
}
