//
//  ViewController.swift
//  hustle-mode
//
//  Created by Anderson de Oliveira on 05/04/18.
//  Copyright © 2018 Anderson de Oliveira. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    @IBOutlet weak var resetBtn: UIButton!
    
    var player: AVAudioPlayer!
    var initialRocketY: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        initialRocketY = rocket.frame.origin.y
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = true
        darkBlueBG.isHidden = false
        powerBtn.isHidden = false
        resetBtn.isHidden = true
        hustleLbl.isHidden = true
        onLbl.isHidden = true
        self.rocket.frame.origin.y = initialRocketY
    }
    
    @IBAction func powerBtnPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame.origin.y = 250
        }) { (finished) in
            self.hustleLbl.isHidden = false
            self.onLbl.isHidden = false
            self.resetBtn.isHidden = false
        }
    }
    
}

