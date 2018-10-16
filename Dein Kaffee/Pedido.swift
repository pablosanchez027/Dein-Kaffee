//
//  Pedidos.swift
//  Dein Kaffee
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class Pedido {
    var bebidaPedido : String
    var ingredientePedido : Int
    var precioPedido : Int
    var totalPedido : Int
    
    init() {
        bebidaPedido = ""
        ingredientePedido = 0
        precioPedido = 0
        totalPedido = 0
    }
    
    init(bebidaPedido : String, ingredientePedido : Int, precioPedido : Int, totalPedido : Int) {
        self.bebidaPedido = bebidaPedido
        self.ingredientePedido = ingredientePedido
        self.precioPedido = precioPedido
        self.totalPedido = totalPedido
    }
}
