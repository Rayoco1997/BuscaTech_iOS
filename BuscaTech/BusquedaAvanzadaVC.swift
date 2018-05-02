//
//  BusquedaAvanzadaVC.swift
//  BuscaTech
//
//  Created by Raymundo Coronilla on 01/05/18.
//  Copyright © 2018 BuscaTech. All rights reserved.
//

import UIKit

class BusquedaAvanzadaVC: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var picker1Options = [] as NSArray
    var picker2Options = [] as NSArray
    var picker3Options = [] as NSArray
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView.tag == 1){
            return picker1Options.count
        }else if(pickerView.tag == 2){
            return picker2Options.count
        }else{
            return picker3Options.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == 1){
            return "\(picker1Options[row])"
        }else if(pickerView.tag == 2){
            return "\(picker2Options[row])"
        }else{
            return "\(picker3Options[row])"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        picker1Options = ["PC"]
        picker2Options = ["De escritorio","Laptop","Tablet"]
        picker3Options = ["Programación", "Gaming", "Diseño", "Uso general"]
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
