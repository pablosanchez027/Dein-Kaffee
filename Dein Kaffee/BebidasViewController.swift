//
//  ViewControllerBebidas.swift
//  Dein Kaffee
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class BebidasViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbBebidas: UITableView!
    
    let Bebidas : [Bebida] = [
         Bebida(nombreBebida: "Café Americano", descripcionBebida: "Es la verdadera esencia del café en la forma más concentrada.", precioBebida: 29, iconoBebida: #imageLiteral(resourceName: "CafeAmericano"), imagenBebida: #imageLiteral(resourceName: "CafeAmericanoIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Le falta azúcar", calificacionComentario: 4)]),
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
        
        self.title = "Bebidas"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ("goToDetalleBebida") {
            let destino = segue.destination as? BebidaDetalleViewController
            
            destino?.bebida = Bebidas[(tbBebidas.indexPathForSelectedRow?.row)!]
        }
    }
}
