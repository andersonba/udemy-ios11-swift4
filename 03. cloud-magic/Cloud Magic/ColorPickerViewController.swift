//
//  ColorPickerViewController.swift
//  Cloud Magic
//
//  Created by Anderson de Oliveira on 08/04/18.
//  Copyright © 2018 Anderson de Oliveira. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
    
    var delegate: ColorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func colorBtnPressed(sender: UIButton) {
        delegate?.userDidChoose(color: sender.backgroundColor!,
                                withName: sender.titleLabel!.text!)
        navigationController?.popViewController(animated: true)
    }
}
