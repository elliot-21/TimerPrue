//
//  TimerFormulario.swift
//  TimerPrueba
//
//  Created by Carlos Hernandez on 25/02/22.
//

import UIKit

class TimerFormulario: UIViewController {
    var Accion_Confirmacion: ((_ datos: [Any]) -> Void)?
    
    @IBOutlet weak var txtMinutos: UITextField!
    
    @IBOutlet var txtSegundos: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAceptar(_ sender: Any) {
        if txtMinutos.text == "" || txtSegundos.text == ""{
           Alerta_Mensaje(title: "Aviso", Mensaje: "llenar todos los Campos")
        }else
        {
            var minutos = txtMinutos.text
            var segundos = txtSegundos.text
            var min = Int(minutos!)
            var seg = Int(segundos!)
            self.Accion_Confirmacion?([min,seg])
            
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func btnCancelar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
