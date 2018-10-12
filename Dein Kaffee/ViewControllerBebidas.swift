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
         Bebida(nombreBebida: "Frappuccino de Fresa", descripcionBebida: "Deliciosa mezcla de crème y fresa con hielo y decorado con crema batida", precioBebida: 38, iconoBebida: #imageLiteral(resourceName: "FrapuccinoFresa")),
         Bebida(nombreBebida: "Café en las Rocas", descripcionBebida: "Para los amantes del café, el espresso y una bebida fría", precioBebida: 30, iconoBebida: #imageLiteral(resourceName: "CafeEnLasRocas")),
         Bebida(nombreBebida: "Café Americano", descripcionBebida: "Es la verdadera esencia del café en la forma más concentrada.", precioBebida: 29, iconoBebida: #imageLiteral(resourceName: "CafeAmericano")),
         Bebida(nombreBebida: "Té de Manzanilla", descripcionBebida: "Deliciosos té de manzanilla", precioBebida: 35, iconoBebida: #imageLiteral(resourceName: "TeManzanilla")),
         Bebida(nombreBebida: "Cappuccino", descripcionBebida: "El balance perfecto. Nuestra carga de espresso acompañada con abundante espuma de leche", precioBebida: 35, iconoBebida: #imageLiteral(resourceName: "Capuccino")),
         Bebida(nombreBebida: "Té Chai", descripcionBebida: "Deliciosa mezcla especiada de té Chai, leche y una delgada capa de espuma de leche", precioBebida: 38, iconoBebida: #imageLiteral(resourceName: "TeChai")),
         Bebida(nombreBebida: "Frapé", descripcionBebida: "Dulce y cremosa combinación de café, leche y hielo", precioBebida: 32, iconoBebida: #imageLiteral(resourceName: "Frape")),
         Bebida(nombreBebida: "Té Helado", descripcionBebida: "Disfruta una bebida favorita para refrescarse.", precioBebida: 32, iconoBebida: #imageLiteral(resourceName: "TeHelado")),
         Bebida(nombreBebida: "Frappuccino Moka", descripcionBebida: "Delicioso mocha batido con hielo y una intensa base de café, decorado con crema batida y topping de mocha", precioBebida: 35, iconoBebida: #imageLiteral(resourceName: "FrappucinoMoka")),
         Bebida(nombreBebida: "Caramel Macchiato", descripcionBebida: "Leche cremosa “manchada” con espresso y vainilla, cubierta con una deliciosa rejilla de caramelo. Dulce, cremoso e intenso", precioBebida: 35, iconoBebida: #imageLiteral(resourceName: "CaramelMacchiato"))
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Bebidas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellBebida") as! celdaBebidas
        celda.imgIconoBebidas.image = Bebidas[indexPath.row].iconoBebida
        celda.lblBebida.text = Bebidas[indexPath.row].nombreBebida
        celda.lblBebida.font = UIFont(name: "Caviar Dreams", size: 25)
        
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
