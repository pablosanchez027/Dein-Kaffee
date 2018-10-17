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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datos.Bebidas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellBebida") as! celdaBebidas
        celda.imgIconoBebidas.image = Datos.Bebidas[indexPath.row].iconoBebida
        celda.lblBebida.text = Datos.Bebidas[indexPath.row].nombreBebida
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
            
            destino?.bebida = Datos.Bebidas[(tbBebidas.indexPathForSelectedRow?.row)!]
        }
    }
}
