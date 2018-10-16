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
    var ingrediente1Pedido : Int
    var ingrediente2Pedido : Int
    var ingrediente3Pedido : Int
    var precioPedido : Int
    var totalPedido: Int
    
    init() {
        bebidaPedido = ""
        ingrediente1Pedido = 0
        ingrediente2Pedido = 0
        ingrediente3Pedido = 0
        precioPedido = 0
        totalPedido = 0
    }
    
    init(bebidaPedido : String, ingrediente1Pedido : Int, ingrediente2Pedido : Int,ingrediente3Pedido : Int, precioPedido : Int, totalPedido : Int) {
        self.bebidaPedido = bebidaPedido
        self.ingrediente1Pedido = ingrediente1Pedido
        self.ingrediente2Pedido = ingrediente2Pedido
        self.ingrediente3Pedido = ingrediente3Pedido
        self.precioPedido = precioPedido
        self.totalPedido = totalPedido
    }
}
