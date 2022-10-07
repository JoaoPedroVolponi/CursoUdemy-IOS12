import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultadoLegenda: UILabel!
    
    @IBOutlet weak var precoAlcoolCampo: UITextField!
    
    @IBOutlet weak var precoGasolinaCampo: UITextField!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        if let precoAlcool = precoAlcoolCampo.text {
            if let precoGasolina = precoGasolinaCampo.text {
                
                // validar os campos digitados
               let validaCampos = self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                
                if validaCampos {
                    // calcular o melhor combustivel
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                    
                } else {
                    // mensagem de erro
                    resultadoLegenda.text = "Digite os preços para Calcular!"
                }
                
                
            }
        }
    }
    
    // calculando o preco do combustivel
    
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String) {
        
        if let valorAlcool = Double(precoAlcool) {
            if let ValorGasolina = Double(precoGasolina) {
                
      // Calculo -> precoAlcool / precoGasolina -> se o resultado for >= 0.7 melhor utilizar gasolina senão utilizar alcool
            let resultadoPreco = valorAlcool / ValorGasolina
                
                if resultadoPreco >= 0.7 {
                    resultadoLegenda.text = "Melhor utilizar Gasolina!"
                } else {
                    resultadoLegenda.text = "Melhor utilizar Álcool!"
                }
                
                
                
            }
        }
        
    }
    
    
    
    
    
    
    func validarCampos(precoAlcool: String, precoGasolina: String) -> Bool {
      
        var camposValidados = true
        
        if precoAlcool.isEmpty {
            camposValidados = false
            
        } else if precoGasolina.isEmpty {
            camposValidados = false
            
        }
            
        
        return camposValidados
    }
    
    
    
    
    
    
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
    // da classe
    }
    
