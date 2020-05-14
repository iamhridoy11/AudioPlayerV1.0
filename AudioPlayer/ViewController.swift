//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Mostafizur Rahman Hridoy on 2019-11-04.
//  Copyright © 2019 Mostafizur Rahman Hridoy. All rights reserved.
//

import UIKit
import AVFoundation         //for audio, we have to import this framework. Audio Visual Foundation

class ViewController: UIViewController {
    
//    var playerManager = AVAudioPlayer()  depricated.not working
    var playerManager: AVAudioPlayer!     //like location manager we need this

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let audioPath = Bundle.main.path(forResource: "The Fiend - Let Me In (Entrance Theme) feat. Code Orange", ofType: "mp3")//bundle need to address the                                                         path of the file
        do
        {
             playerManager = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!)) //linking audio file to the playerManager
            playerManager.play()            //play the music
        }
        catch
        {
            //do something if error occurs.
            
        }
        
        
    }


}

