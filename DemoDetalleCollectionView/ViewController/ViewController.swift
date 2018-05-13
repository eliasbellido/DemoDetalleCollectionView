//
//  ViewController.swift
//  DemoDetalleCollectionView
//
//  Created by Elias Daniel on 12/05/18.
//  Copyright © 2018 Elias Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
  
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    var misDispositivos : [Dispositivo] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myDeviceController = DispositivoController()
        misDispositivos = myDeviceController.listarDispositivo()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return misDispositivos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! DispositivoCVCell
        
        celda.lblmodeloDispositivo.text = misDispositivos[indexPath.row].modelo
        celda.imagenDispositivo.image = UIImage(named: misDispositivos[indexPath.row].foto)
        
        celda.layer.borderWidth = 0.5
        celda.layer.borderColor = UIColor.lightGray.cgColor
        
        return celda
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let celda = collectionView.cellForItem(at: indexPath)
        celda?.layer.borderColor = UIColor.gray.cgColor
        celda?.layer.borderWidth = 2
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
        let celda = collectionView.cellForItem(at: indexPath)
        celda?.layer.borderColor = UIColor.lightGray.cgColor
        celda?.layer.borderWidth = 0.5
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destino = segue.destination as! DispositivoDetalleVC
        let celda = sender as! DispositivoCVCell
        let indexPath = self.myCollectionView.indexPath(for: celda)
        
        destino.dispositivo = self.misDispositivos[(indexPath?.row)!]
        
        
        
    }

    
    
    
    
    
}

