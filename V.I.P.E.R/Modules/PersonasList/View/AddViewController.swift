//
//  ViewController.swift
//  V.I.P.E.R
//
//  Created by David on 04/01/2018.
//  Copyright © 2018 David. All rights reserved.
//

import UIKit

class AddViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nombre:UITextField!
    @IBOutlet weak var apellido:UITextField!
    
    var presenter:PersonaPresenter?
    

    @IBAction func add(_ sender: UIButton) {
        
        presenter?.addNewObjectWithData(name: self.nombre.text!, surname: self.apellido.text!)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func cancel(_ sender: UIButton) {
        
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
