//
//  ScreenColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class ScreenColorViewController: BaseViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var viBorder: UIView!
    @IBOutlet weak var swWhiteBorder: UISwitch!
    
    
    // MARK: - Metodos de ViewCicle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Método para desaparecer o navegation bar
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    // Metodo para Sair da Tela Atual e passar as informações para a próxima tela.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ResultViewController
        vc.message = message
        vc.useWhiteBorder = swWhiteBorder.isOn
    }
    

    
    // MARK: - Actions
    @IBAction func changeBorder(_ sender: UISwitch) {
        
        // Seleciona a Cor Branca para as Bordas 
        viBorder.backgroundColor = sender.isOn ? .white : .clear
    }
}



//MARK: - Extensão
extension ScreenColorViewController : ColorPickerDelegate{
    
    // Chama a função para aplicar Cor 
    func applyColor(color: UIColor) {
        view.backgroundColor = color
        message.screenColor = color
    }
}















