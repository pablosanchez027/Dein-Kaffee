//
//  ViewControllerBebidas.swift
//  Dein Kaffee
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class BebidasFriasViewControllerB: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbBebidasFrias: UITableView!
    let Bebidas : [Bebida] = [
         Bebida(nombreBebida: "Frappuccino de Fresa", descripcionBebida: "Deliciosa mezcla de crème y fresa con hielo y decorado con crema batida", precioBebida: 38, iconoBebida: #imageLiteral(resourceName: "FrapuccinoFresa"), imagenBebida: #imageLiteral(resourceName: "FrappuccinoFresaIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Mi fav lit!!", calificacionComentario: 5)])
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Bebidas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellBebida") as! celdaBebidas
        celda.imgIconoBebidas.image = Bebidas[indexPath.row].iconoBebida
        celda.lblBebida.text = Bebidas[indexPath.row].nombreBebida
        celda.lblBebida.font = UIFont(name: "Caviar Dreams", size: 20)
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Bebidas Frías"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ("goToDetalleBebida") {
            let destino = segue.destination as? BebidaDetalleViewController
            
            destino?.bebida = Bebidas[(tbBebidasFrias.indexPathForSelectedRow?.row)!]
        }
    }
}
