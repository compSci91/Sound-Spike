//
//  ViewController.swift
//  SoundSpike
//
//  Created by Joshua Howell on 2/8/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    /*
     Initial tutorial: https://www.youtube.com/watch?v=bZNAFkkUeKs&ab_channel=Devslopes
     
     Sound tutorial:
     https://www.youtube.com/watch?v=2kflmGGMBOA&ab_channel=iOSAcademy
     */
    
    @IBOutlet weak var totalPriceLbl: UILabel!
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTaxTxt: UITextField!
    
    var player:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = "" 
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTotalPrice(_ sender: Any) {
//        let price:Double = Double(priceTxt.text!)!
//        let salesTax:Double = Double(salesTaxTxt.text!)!
//
//        let totalSalesTax:Double = price * salesTax
//        let totalPrice = price + totalSalesTax
//
//        totalPriceLbl.text = "$\(totalPrice)"
        
        if let player = player, player.isPlaying{
            //stop playback
            player.stop()
        }else {
            //set up player, play
            let urlString = Bundle.main.path(forResource: "tv-static-05", ofType: "mp3")
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                //need a url to the audio mp3
                guard let urlString = urlString else {
                    return
                }
                
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
                let volume = player.volume
                print()
            } catch {
                print("Something went wrong!!!" )
            }
        }
    }


}

