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
        Bebida(nombreBebida: "Café Americano", descripcionBebida: "Es la verdadera esencia del café en la forma más concentrada.", precioBebida: 29, iconoBebida: #imageLiteral(resourceName: "CafeAmericano"), imagenBebida: #imageLiteral(resourceName: "CafeAmericanoIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Le falta azúcar", calificacionComentario: 4)], tipoBebida: 1),
        Bebida(nombreBebida: "Frappuccino de Fresa", descripcionBebida: "Deliciosa mezcla de crème y fresa con hielo y decorado con crema batida", precioBebida: 38, iconoBebida: #imageLiteral(resourceName: "FrapuccinoFresa"), imagenBebida: #imageLiteral(resourceName: "FrappuccinoFresaIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Mi fav lit!!", calificacionComentario: 5)], tipoBebida: 2),
        Bebida(nombreBebida: "Café en las Rocas", descripcionBebida: "Para los amantes del café, el espresso y una bebida fría", precioBebida: 30, iconoBebida: #imageLiteral(resourceName: "CafeEnLasRocas"), imagenBebida: #imageLiteral(resourceName: "CafeEnLasRocasIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Sabe a cigarro", calificacionComentario: 1)], tipoBebida: 1),
        Bebida(nombreBebida: "Té de Manzanilla", descripcionBebida: "Deliciosos té de manzanilla", precioBebida: 35, iconoBebida: #imageLiteral(resourceName: "TeManzanilla"), imagenBebida: #imageLiteral(resourceName: "TeManzanillaIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Muy rico, pero me gustaría más con hielo", calificacionComentario: 4)], tipoBebida: 3),
        Bebida(nombreBebida: "Cappuccino", descripcionBebida: "El balance perfecto. Nuestra carga de espresso acompañada con abundante espuma de leche", precioBebida: 35, iconoBebida: #imageLiteral(resourceName: "Capuccino"), imagenBebida: #imageLiteral(resourceName: "CapuccinoIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Está muy rico, no es mi fav, pero está muy rico", calificacionComentario: 4)], tipoBebida: 1),
        Bebida(nombreBebida: "Té Chai", descripcionBebida: "Deliciosa mezcla especiada de té Chai, leche y una delgada capa de espuma de leche", precioBebida: 38, iconoBebida: #imageLiteral(resourceName: "TeChai"), imagenBebida: #imageLiteral(resourceName: "TeChaiIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Está muy rico, me encanta!!", calificacionComentario: 5)], tipoBebida: 1),
        Bebida(nombreBebida: "Frapé", descripcionBebida: "Dulce y cremosa combinación de café, leche y hielo", precioBebida: 32, iconoBebida: #imageLiteral(resourceName: "Frape"), imagenBebida: #imageLiteral(resourceName: "FrapeIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "No me gusta el café frío", calificacionComentario: 2)], tipoBebida: 2),
        Bebida(nombreBebida: "Té Helado", descripcionBebida: "Disfruta una bebida favorita para refrescarse.", precioBebida: 32, iconoBebida: #imageLiteral(resourceName: "TeHelado"), imagenBebida: #imageLiteral(resourceName: "TeHeladoIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Perfecto! Muy rico", calificacionComentario: 5)], tipoBebida: 3),
        Bebida(nombreBebida: "Frappuccino Moka", descripcionBebida: "Delicioso mocha batido con hielo y una intensa base de café, decorado con crema batida y topping de mocha", precioBebida: 35, iconoBebida: #imageLiteral(resourceName: "FrappucinoMoka"), imagenBebida: #imageLiteral(resourceName: "FrappuccinoMokaIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Pueees, está pasable... Tal vez si estuviera más dulce", calificacionComentario: 3)], tipoBebida: 2),
        Bebida(nombreBebida: "Caramel Macchiato", descripcionBebida: "Leche cremosa “manchada” con espresso y vainilla, cubierta con una deliciosa rejilla de caramelo. Dulce, cremoso e intenso", precioBebida: 35, iconoBebida: #imageLiteral(resourceName: "CaramelMacchiato"), imagenBebida: #imageLiteral(resourceName: "CaramelMacchiatoIMG"), calificacionBebida: 0, comentariosBebida: [Comentario(nombreComentario: "Sofía", textoComentario: "Antes era mi fav, tal vez vuelva a ser mi fav", calificacionComentario: 5)], tipoBebida: 1)
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
