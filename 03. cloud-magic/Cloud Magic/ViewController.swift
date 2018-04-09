//
//  ViewController.swift
//  Cloud Magic
//
//  Created by Anderson de Oliveira on 08/04/18.
//  Copyright © 2018 Anderson de Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorTransferDelegate {
    
    @IBOutlet weak var colorLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func userDidChoose(color: UIColor, withName colorName: String) {
        colorLbl.text = colorName
        view.backgroundColor = color
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerViewController else { return }
            colorPickerVC.delegate = self
        }
    }
}

