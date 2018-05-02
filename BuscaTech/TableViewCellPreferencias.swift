//
//  TableViewCellPreferencias.swift
//  BuscaTech
//
//  Created by Raymundo Coronilla on 30/04/18.
//  Copyright © 2018 BuscaTech. All rights reserved.
//

import UIKit

class TableViewCellPreferencias: UITableViewCell {
    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblPrecio: UILabel!
    
    @IBOutlet weak var ivFoto: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
