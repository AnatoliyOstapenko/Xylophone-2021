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
        // transfer current title of button pressed to pressedButton
        
        if let pressedButton = sender.currentTitle {
            playSound(button: pressedButton)
        } else {
            print("Another error")
        }
        
        
    }
    // 3) create func playSound - this step is not needed, it's just to practice more function skill
    // 4) create input button to interact with anyButtonPressed function
    
    func playSound(button: String) {
        
        // 5) create URL session
        // 6) change a name tittle to pressedButton
        let url = Bundle.main.url(forResource: button, withExtension: "wav")
        
        // 7) url became optiona, so I have to unwrap url, I use guard (it's shortage way)
        guard url != nil else {
            return
        }
        // 8) Create the audio player and play the a sound from url session
        // transfer to variable URL session, add try, and add do - carch block
        // also I have to add exclamation mark to url
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
            
        } catch {
            print("error popped up, let's RFM again")
        }
    }
}



    


