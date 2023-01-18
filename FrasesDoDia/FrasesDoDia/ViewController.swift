import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var legendaResultado: UILabel!
    
    
    @IBAction func novaFrase(_ sender: Any) {
        
        var frases: [String] = []
        frases.append("Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos")
        frases.append("Ter sucesso é falhar repetidamente, mas sem perder o entusiasmo")
        frases.append("Não é o mais forte que sobrevive, nem o mais inteligente. Quem sobrevive é o mais disposto à mudança")
        frases.append("Só Salvinho")
        
        let fraseAleatoria = arc4random_uniform(4)
        legendaResultado.text = frases[ Int(fraseAleatoria) ]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

