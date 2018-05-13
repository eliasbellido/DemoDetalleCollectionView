//
//  DIspositivoDetalleTVCell.swift
//  DemoDetalleCollectionView
//
//  Created by Elias Daniel on 12/05/18.
//  Copyright © 2018 Elias Daniel. All rights reserved.
//

import UIKit

class DIspositivoDetalleTVCell: UITableViewCell {

    @IBOutlet weak var lblIdentificador: UILabel!
    
    @IBOutlet weak var lblValor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
