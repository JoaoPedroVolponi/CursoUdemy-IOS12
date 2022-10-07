import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        significadoSignos.append("O Ariano é uma pessoa cheia de energia e entusiamos. Pioneiro e aventureiro, lhe encantam as metas, a liberdade e as idéias novas")
        significadoSignos.append("Zeloso e possessivo, um cauro pode tender a ser inflexível e ressentido. As vezes os Touro pecam de ser cobiçosos e de permitir-se tudo")
        significadoSignos.append("Signo 03")
        significadoSignos.append("Signo 04")
        significadoSignos.append("Signo 05")
        significadoSignos.append("Signo 06")
        significadoSignos.append("Signo 07")
        significadoSignos.append("Signo 08")
        significadoSignos.append("Signo 09")
        significadoSignos.append("Signo 10")
        significadoSignos.append("Signo 11")
        significadoSignos.append("Signo 12")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        
        celula.textLabel?.text = signos[ indexPath.row ]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do Signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "Ok", style: .default)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true)
    }
}

