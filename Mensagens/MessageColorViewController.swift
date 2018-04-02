//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController {
    
    // MARK:- Methods of viewCicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
    }
    
    // Metodo para Sair da Tela Atual e passar informações para a próxima tela.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
}

extension MessageColorViewController : ColorPickerDelegate{
    
    func applyColor(color : UIColor){
        lbMessage.backgroundColor = color
        message.backgroundColor = color
    }
}
