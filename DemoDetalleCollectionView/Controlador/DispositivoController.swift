//
//  DispositivoController.swift
//  DemoDetalleCollectionView
//
//  Created by Elias Daniel on 12/05/18.
//  Copyright © 2018 Elias Daniel. All rights reserved.
//

import Foundation

class DispositivoController{
    
    func listarDispositivo() -> [Dispositivo]{
        
        var dispositivo : [Dispositivo] = []
        
        let myDevice1 = Dispositivo(foto: "f1", modelo: "MotoX2", marca: "Motorola", precio: 950.40)
        let myDevice2 = Dispositivo(foto: "f2", modelo: "iPhoneX", marca: "Apple", precio: 2560.40)
        let myDevice3 = Dispositivo(foto: "f3", modelo: "Galaxy S8", marca: "Samsung", precio: 1200.30)
        let myDevice4 = Dispositivo(foto: "f4", modelo: "Nokia J10", marca: "Nokia", precio: 850.95)
        
        dispositivo.append(myDevice1)
        dispositivo.append(myDevice2)
        dispositivo.append(myDevice3)
        dispositivo.append(myDevice4)
        
        return dispositivo
    }
}
