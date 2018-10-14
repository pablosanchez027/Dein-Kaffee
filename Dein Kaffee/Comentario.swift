//
//  Comentario.swift
//  Dein Kaffee
//
//  Created by Alumno on 13/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class Comentario {
    var nombreComentario : String
    var textoComentario : String
    var calificacionComentario : Int
    
    init() {
        nombreComentario = ""
        textoComentario = ""
        calificacionComentario = 0
    }
    
    init(nombreComentario : String, textoComentario : String, calificacionComentario : Int) {
        self.nombreComentario = nombreComentario
        self.textoComentario = textoComentario
        self.calificacionComentario = calificacionComentario
    }
}
