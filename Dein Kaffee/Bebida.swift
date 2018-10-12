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
    
    init() {
        nombreBebida = ""
        descripcionBebida = ""
        precioBebida = 0.0
        iconoBebida = UIImage()
    }
    
    init(nombreBebida : String, descripcionBebida : String, precioBebida : Double, iconoBebida : UIImage) {
        self.nombreBebida = nombreBebida
        self.descripcionBebida = descripcionBebida
        self.precioBebida = precioBebida
        self.iconoBebida = iconoBebida
    }
}
