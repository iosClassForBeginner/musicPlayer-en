//
//  ViewController.swift
//  musicPlayer-en
//
//  Created by Wataru Maeda on 2017/02/21.
//  Copyright © 2017 Wataru Maeda. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Get file path
        let filePath = Bundle.main.path(forResource: "music", ofType: "mp3")
        let audioPath = URL(fileURLWithPath: filePath!)
        
        do {
            // Initialize audio player
            audioPlayer = try AVAudioPlayer(contentsOf: audioPath)
            audioPlayer.prepareToPlay()
        } catch {
            print("Error")
        }
    }

    @IBAction func tappedPlay(_ sender: Any)
    {
        // Play
        audioPlayer.play()
    }
    
    @IBAction func tappedStop(_ sender: Any)
    {
        // Stop
        audioPlayer.stop()
    }
}

