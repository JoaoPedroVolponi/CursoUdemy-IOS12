import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textAnotacao: UITextView!
    let chave = "minhaanotacao"
    
    @IBAction func botaoSalvar(_ sender: Any) {
        
        
        
        if let texto = textAnotacao.text {
            UserDefaults.standard.set(texto, forKey: chave)
        }
    }
    
    func recuperarAnotacao() -> String {
        
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave) {
            return textoRecuperado as! String
        }
        
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textAnotacao.text = recuperarAnotacao()
        
        bordas()
    }

    
    
    
    func bordas () {
        textAnotacao.layer.cornerRadius = 20
    }
    
}

