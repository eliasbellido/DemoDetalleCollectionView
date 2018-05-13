//
//  DispositivoDetalleVC.swift
//  DemoDetalleCollectionView
//
//  Created by Elias Daniel on 12/05/18.
//  Copyright © 2018 Elias Daniel. All rights reserved.
//

import UIKit

class DispositivoDetalleVC: UIViewController,UITableViewDelegate,UITableViewDataSource{
  
    
    var dispositivo : Dispositivo?
    @IBOutlet weak var mytableView: UITableView!
    
    @IBOutlet weak var imagenDispositivo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imagenDispositivo.image = UIImage(named: (self.dispositivo?.foto)!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda") as! DIspositivoDetalleTVCell
        
        switch indexPath.row{
        case 0:
            celda.lblIdentificador.text = "Modelo: "
            celda.lblValor.text = self.dispositivo?.modelo
        case 1:
            celda.lblIdentificador.text = "Marca: "
            celda.lblValor.text = self.dispositivo?.marca
        case 2:
            celda.lblIdentificador.text = "Precio: "
            celda.lblValor.text = String(format: "%.2f", (self.dispositivo?.precio)!)
        default:
            celda.lblIdentificador.text = ""
            celda.lblValor.text = ""
        }
        return celda
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
