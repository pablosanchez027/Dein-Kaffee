//
//  InicioSesionController.swift
//  Dein Kaffee
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Pablo. All rights reserved.
//

import Foundation
import UIKit

class InicioSesionController : UIViewController {
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblWarning: UILabel!
    
    @IBAction func doTapEntrar(_ sender: Any) {
        if txtUsername.text != nil && txtUsername.text != "" && txtPassword.text != nil && txtPassword.text != "" {
            //Pasó la validación
            performSegue(withIdentifier: "goToEntrar", sender: self)
        } else {
            //No pasó la validación
            lblWarning.isHidden = false
        }
    }
}
