//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var xylophonePlayer: AVAudioPlayer?


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedButtonA(_ sender: UIButton){
        playSound(sourceName: "A.wav")
    }
    @IBAction func tappedButtonB(_ sender: UIButton){
        playSound(sourceName: "B.wav")
    }
    @IBAction func tappedButtonC(_ sender: UIButton){
        playSound(sourceName: "C.wav")
    }
    @IBAction func tappedButtonD(_ sender: UIButton){
        playSound(sourceName: "D.wav")
    }
    @IBAction func tappedButtonE(_ sender: UIButton){
        playSound(sourceName: "E.wav")
    }
    @IBAction func tappedButtonF(_ sender: UIButton){
        playSound(sourceName: "F.wav")
    }
    @IBAction func tappedButtonG(_ sender: UIButton){
        playSound(sourceName: "G.wav")
    }
    
    func playSound(sourceName: String) {

        let path = Bundle.main.path(forResource: sourceName, ofType: nil)!
        let url = URL(fileURLWithPath: path)

        do {
            
            xylophonePlayer = try AVAudioPlayer(contentsOf: url)

            xylophonePlayer?.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
    

}

