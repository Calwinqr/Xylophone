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
//    @IBAction func cKeyPressed(_ sender: Any) {
//        playSound(sound:"C")
//    }
//    
//    @IBAction func dKeyPressed(_ sender: Any) {
//        playSound(sound:"D")
//    }
//    
//    @IBAction func eKeyPressed(_ sender: Any) {
//        playSound(sound:"E")
//    }
//    
//    @IBAction func fKeyPressed(_ sender: Any) {
//        playSound(sound:"F")
//    }
//    
//    
//    @IBAction func gKeyPressed(_ sender: Any) {
//        playSound(sound:"G")
//    }
//    
//    @IBAction func aKeyPressed(_ sender: Any) {
//        playSound(sound:"A")
//    }
//    
//    
//    @IBAction func bKeyPressed(_ sender: Any) {
//        playSound(sound:"B")
//    }
//    
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sound: sender.currentTitle!)
        sender.alpha=0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(200)) {
            sender.alpha=1
        }
    }
    
    var player: AVAudioPlayer!

    func playSound(sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}
