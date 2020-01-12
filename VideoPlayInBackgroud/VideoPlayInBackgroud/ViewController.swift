//
//  ViewController.swift
//  VideoPlayInBackgroud
//
//  Created by SHUBHAM AGARWAL on 09/01/20.
//  Copyright © 2020 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var videoLayer: UIView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var signUp: UIButton!
    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var stack: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo()
        
    }
    
    func playVideo() {
        guard let path = Bundle.main.path(forResource: "intro", ofType: "mp4") else {
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        self.videoLayer.layer.addSublayer(playerLayer)
        
        player.play()
        
        videoLayer.bringSubviewToFront(img)
        videoLayer.bringSubviewToFront(lbl)
        videoLayer.bringSubviewToFront(signIn)
        videoLayer.bringSubviewToFront(signUp)
        videoLayer.bringSubviewToFront(stack)
    }


}

