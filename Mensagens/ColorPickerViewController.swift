//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Eduardo Tarallo on 19/02/2018.
//  Copyright © 2018 Eric Brito. All rights reserved.
//

import UIKit


// Criando um protocolo di tipo class
protocol ColorPickerDelegate: class {
    func applyColor(color: UIColor)
}


class ColorPickerViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var viColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    
    weak var delegate : ColorPickerDelegate?
    
    
    //Actions
    @IBAction func changeColor(_ sender: UISlider) {
        
        // Configurando os Sliders
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
        
        // Armazena as informações de cor em reference que nos dá acesso em todas as tela
        delegate?.applyColor(color: viColor.backgroundColor!)
        
        // Dispensa a tela
        dismiss(animated: true, completion: nil)
    }
    
}
