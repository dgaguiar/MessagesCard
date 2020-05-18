//
//  BaseViewController.swift
//  Mensagens
//
//  Created by daianne.gomes.aguiar on 18/05/20.
//  Copyright © 2020 Daianne Gomes Aguiar. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func changeColor (_ sender: UIButton) {
        if let reference = self as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.delegate = reference
            present(colorPicker, animated: true, completion: nil)
        }
    }
    
}
