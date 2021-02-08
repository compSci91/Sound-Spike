//
//  ViewController.swift
//  SoundSpike
//
//  Created by Joshua Howell on 2/8/21.
//

import UIKit

class ViewController: UIViewController {
    //https://www.youtube.com/watch?v=bZNAFkkUeKs&ab_channel=Devslopes
    
    @IBOutlet weak var totalPriceLbl: UILabel!
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = "" 
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price:Double = Double(priceTxt.text!)!
        let salesTax:Double = Double(salesTaxTxt.text!)!
        
        let totalSalesTax:Double = price * salesTax
        let totalPrice = price + totalSalesTax
        
        totalPriceLbl.text = "$\(totalPrice)"
    }


}

