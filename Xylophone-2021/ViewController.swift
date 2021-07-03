//
//  ViewController.swift
//  Xylophone-2021
//
//  Created by MacBook on 02.07.2021.
//

import UIKit
// 1) Import AVFoundation
import AVFoundation



class ViewController: UIViewController {
    // 2) Create variable audioPlayer into the class only
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyButtonPressed(_ sender: UIButton) {
        //create URL session
        let url = Bundle.main.url(forResource: "A", withExtension: "wav")
        
        // url became optiona, so I have to unwrap url, I use guard (it's shortage way)
        guard url != nil else {
            return
        }
        // Create the audio player and play the a sound from url session
        // transfer to variable URL session, add try, and add do - carch block
        // also I have to add exclamation mark to url
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
            
        } catch {
            print("erroe popped up, let's RFM again")
        }
        
        
    }
}



    


