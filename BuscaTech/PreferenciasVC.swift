//
//  PreferenciasVC.swift
//  BuscaTech
//
//  Created by Raymundo Coronilla on 30/04/18.
//  Copyright © 2018 BuscaTech. All rights reserved.
//

import UIKit

class PreferenciasVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let nombreProductos = [("Acer 15.6"),("Asus Vivobook"),("Acer Aspire 7"),("Asus 15.6"),("MSI GL62M")]
    
    let precioProductos = [("$14,499.00"),("$22,900.00"),("$24,000.00"),("$18,800.00"),("$16,600.00")]
    
    let imagenesProductos = [UIImage(named: "comp_1"), UIImage(named: "comp_2"), UIImage(named: "comp_3"), UIImage(named: "comp_4"), UIImage(named: "comp_5")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! TableViewCellPreferencias
        let nombreP = nombreProductos[indexPath.row]
        let precioP = precioProductos[indexPath.row]
        let imagen = imagenesProductos[indexPath.row]
        celda.lblNombre.text = nombreP
        celda.lblPrecio.text = precioP
        celda.ivFoto.image = imagen
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
