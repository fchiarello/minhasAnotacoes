//
//  ViewController.swift
//  minhasAnotacoes
//
//  Created by Fellipe Ricciardi Chiarello on 4/24/19.
//  Copyright © 2019 fchiarello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textoCampo: UITextView!
    
    let chave = "minhaAnotacao"
    
    @IBAction func botaoSalvar(_ sender: Any) {
        
        if let texto = textoCampo.text{
            
            UserDefaults.standard.set( texto, forKey: chave)
        }
    }
    
    func recuperarAnotacao() -> String {
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String
        }
        
        return ""
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textoCampo.text = recuperarAnotacao()
        
    }
}
