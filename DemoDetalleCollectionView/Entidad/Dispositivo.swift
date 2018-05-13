//
//  Dispositivo.swift
//  DemoDetalleCollectionView
//
//  Created by Elias Daniel on 12/05/18.
//  Copyright © 2018 Elias Daniel. All rights reserved.
//

import Foundation

class Dispositivo{
    
    var foto : String
    var modelo : String
    var marca : String
    var precio : Double
    
    init(foto : String, modelo : String, marca : String, precio : Double){
        self.foto = foto
        self.modelo = modelo
        self.marca = marca
        self.precio = precio
    }
}
