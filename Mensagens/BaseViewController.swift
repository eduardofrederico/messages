//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Eduardo Frederico on 28/08/23.
//  Copyright © 2023 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var lbMessage: UILabel!
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        if let reference = self as? ColorPickerDelegate {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.delegate = reference
            colorPicker.modalPresentationStyle = .overCurrentContext
            present(colorPicker, animated: true, completion: nil)
        }
    }


}
