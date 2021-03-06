//
//  Sound.swift
//  Tabata
//
//  Created by Mina on 2019/11/20.
//  Copyright © 2019 Masaharu Minagawa. All rights reserved.
//

import Foundation
import AVFoundation

class Sound {
    var player: AVAudioPlayer?
    
    func beforeThreeCount(name: String, extentionName: String) {
        //再生
        let sound = Bundle.main.url(forResource: name, withExtension: extentionName)
        
        do {
            //効果音
            player = try AVAudioPlayer(contentsOf: sound!)
            player?.play()
        } catch {
            print("OFF")
        }
    }
}

