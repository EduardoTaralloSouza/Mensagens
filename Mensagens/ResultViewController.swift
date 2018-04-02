//
//  ResultViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class ResultViewController: BaseViewController {

    @IBOutlet weak var viBorder: UIView!
    
    var useWhiteBorder: Bool = true
    
    //Métodos de ViewCicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Método para desaparecer o navegation bar
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        // Traz todas as informações das telas anteriores para essa
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
        view.backgroundColor = message.screenColor
        viBorder.backgroundColor = useWhiteBorder ? .white : .clear
    
    }

    //Método para quando tocar na tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Método para dispensar um ViewController
        navigationController?.popViewController(animated: true)
    }
}



    

