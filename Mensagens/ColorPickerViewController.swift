//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by daianne.gomes.aguiar on 18/05/20.
//  Copyright © 2020 Daianne Gomes Aguiar. All rights reserved.
//

import UIKit

protocol ColorPickerDelegate: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    weak var delegate: ColorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        delegate?.applyColor(color: viColor.backgroundColor!)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        viColor.backgroundColor = UIColor(displayP3Red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
}
