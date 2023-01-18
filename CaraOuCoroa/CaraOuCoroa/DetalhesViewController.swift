import UIKit

class DetalhesViewController: UIViewController {
    
    var numeroRandomico: Int!
    
    @IBOutlet weak var moedaImagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Moeda Cara
        if numeroRandomico == 0 {
            
            moedaImagem.image = #imageLiteral(resourceName: "moeda_cara")
            
            // MARK: - Moeda Coroa
        } else {
            
            moedaImagem.image = #imageLiteral(resourceName: "moeda_coroa")
            
        }
    }
}
