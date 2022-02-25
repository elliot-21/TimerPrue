//
//  ViewController.swift
//  TimerPrueba
//
//  Created by Carlos Hernandez on 25/02/22.
//

import UIKit

class ViewController: UIViewController {

    let controlador_modals = Adaptador_modals()
    
    @IBOutlet weak var lblTime: UILabel!
   
    var seconds = 0
    var timer = Timer()
    var istimerRuning = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTimeStart(_ sender: Any) {
        if istimerRuning == true || seconds == 0
        {
            Alerta_Mensaje(title: "Aviso", Mensaje: "Asigne un valor o Timer en uso")
        }else{
            runTimer()
        }
    }
    
    @IBAction func btnPause(_ sender: Any) {
        if istimerRuning == false
        {
            Alerta_Mensaje(title: "Aviso", Mensaje: "Presione Start Para Continuar")
        }
        timer.invalidate()
        lblTime.text = timeString(time: TimeInterval(seconds))
        istimerRuning = false
    }
    
    @IBAction func btnNewTimer(_ sender: Any) {
        let moodal_generado_2 = controlador_modals.Crear_Modal_Funcion(Accion_Confirmacion_completion:
        { [self](Datos) -> Void in
            dismiss(animated: true, completion: nil)
            print(Datos)
            var minutos = Datos[0] as! Int
            var segundos = Datos[1] as! Int
            lblTime.text = "00:\(minutos) : \(segundos)"
           seconds = (minutos * 60 + segundos)
            
        })
        present(moodal_generado_2, animated: true)
    }
    
    
    func runTimer(){
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(updateTimer)), userInfo: nil, repeats: true)
       istimerRuning = true
    }
    
    @objc func updateTimer (){
        if seconds < 1 {
            timer.invalidate()
            istimerRuning = false
            Alerta_Mensaje(title: "Aviso", Mensaje: "Timer terminado")
        }else{
            seconds -= 1
            lblTime.text = timeString(time: TimeInterval(seconds))
            print(timeString(time: TimeInterval(seconds)))
        }
    }
    
}

