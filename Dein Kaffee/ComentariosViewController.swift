//
//  ComentariosViewController.swift
//  Dein Kaffee
//
//  Created by Alumno on 13/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class ComentariosViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var comentarios : [Comentario]?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (comentarios?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellComentario") as! celdaComentarios
        
        celda.lblNombre.text = comentarios?[indexPath.row].nombreComentario
        celda.lblComentario.text = comentarios?[indexPath.row].textoComentario
        
        switch comentarios?[indexPath.row].calificacionComentario {
        case 1:
            celda.imgCalificacion1.isHidden = false
            celda.imgCalificacion2.isHidden = true
            celda.imgCalificacion3.isHidden = true
            celda.imgCalificacion4.isHidden = true
            celda.imgCalificacion5.isHidden = true
        case 2:
            celda.imgCalificacion1.isHidden = false
            celda.imgCalificacion2.isHidden = false
            celda.imgCalificacion3.isHidden = true
            celda.imgCalificacion4.isHidden = true
            celda.imgCalificacion5.isHidden = true
        case 3:
            celda.imgCalificacion1.isHidden = false
            celda.imgCalificacion2.isHidden = false
            celda.imgCalificacion3.isHidden = false
            celda.imgCalificacion4.isHidden = true
            celda.imgCalificacion5.isHidden = true
        case 4:
            celda.imgCalificacion1.isHidden = false
            celda.imgCalificacion2.isHidden = false
            celda.imgCalificacion3.isHidden = false
            celda.imgCalificacion4.isHidden = false
            celda.imgCalificacion5.isHidden = true
        case 5:
            celda.imgCalificacion1.isHidden = false
            celda.imgCalificacion2.isHidden = false
            celda.imgCalificacion3.isHidden = false
            celda.imgCalificacion4.isHidden = false
            celda.imgCalificacion5.isHidden = false
        default:
            celda.imgCalificacion1.isHidden = true
            celda.imgCalificacion2.isHidden = true
            celda.imgCalificacion3.isHidden = true
            celda.imgCalificacion4.isHidden = true
            celda.imgCalificacion5.isHidden = true
        }
        
        return celda
    }
    
    override func viewDidLoad() {
        self.title = "Comentarios"
    }
}
