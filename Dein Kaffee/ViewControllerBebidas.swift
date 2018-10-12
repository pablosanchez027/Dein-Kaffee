//
//  ViewControllerBebidas.swift
//  Dein Kaffee
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerBebidas: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbBebidas: UITableView!
    let Bebidas : [Bebida] = [
        Bebida(nombreBebida: "Frappuccino de Fresa", descripcionBebida: "Deliciosa mezcla de crème y fresa con hielo y decorado con crema batida", precioBebida: 38, iconoBebida: #imageLiteral(resourceName: "FrapuccinoFresa"))
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Bebidas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellBebida") as! celdaBebidas
        celda.imgIconoBebidas.image = Bebidas[indexPath.row].iconoBebida
        celda.lblBebida.text = Bebidas[indexPath.row].nombreBebida
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Bebidas"
    }
}
