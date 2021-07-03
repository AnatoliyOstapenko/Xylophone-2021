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
    
    @IBAction func anyButtonPressed(_ sender: UIButton) {
        // 6) create constant pressedButton (becuase never mutaded in the further line)
        // 6) transfer current title of button pressed to pressedButton
        let pressedButton = sender.currentTitle
        
        // 3) create URL session
        // 7) change a name tittle to pressedButton
        let url = Bundle.main.url(forResource: pressedButton, withExtension: "wav")
        
        // 4) url became optiona, so I have to unwrap url, I use guard (it's shortage way)
        guard url != nil else {
            return
        }
        // 5) Create the audio player and play the a sound from url session
        // 5) transfer to variable URL session, add try, and add do - carch block
        // 5) also I have to add exclamation mark to url
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
            
        } catch {
            print("error popped up, let's RFM again")
        }
        
        
    }
}



    


