//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Eduardo Tarallo on 17/02/2018.
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var lbMessage: UILabel!
    
    // Criamos um variavel para poder tranferir os parametros para Message
    var message: Message!
    
    //MARK: - Methods of ViewCicle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Actions
    @IBAction func changeColor(_ sender: UIButton){
        
        // 
        if let reference = self as? ColorPickerDelegate{
            
            // Método para chamar uma view utilizando código, sem a necessidade de utilizar Segue.
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            
            // Método para alterar o estilo de apresentação de uma View Modal
            colorPicker.modalPresentationStyle = .overCurrentContext
            
            // Referencia a ColorPicker
            colorPicker.delegate = reference
            
            // Método para apresentar uma view Modal s/Segue
            present(colorPicker, animated: true, completion: nil)
        }
    }
}
