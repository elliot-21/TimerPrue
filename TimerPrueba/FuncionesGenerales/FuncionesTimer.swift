//
//  funcionesTimer.swift
//  exampleTimer
//
//  Created by Carlos Hernandez on 25/02/22.
//

import UIKit
import Foundation

extension UIViewController
{
    func  quitar_barra_navegacion(){
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func  poner_barra_navegacion(){
        self.navigationController?.navigationBar.isHidden = false
    }
    
    func Alerta_Mensaje(title: String, Mensaje:String)
    {
        let Mensaje_alerta = UIAlertController(title: title, message: Mensaje, preferredStyle: UIAlertController.Style.alert)
        let BotonAlertaOK = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        Mensaje_alerta.addAction(BotonAlertaOK)
        self.present(Mensaje_alerta, animated: true, completion: nil)
        
    }

    func timeString(time: TimeInterval) -> String{
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let secons = Int(time) % 60
        return String(format: "%02i:%02i:%02i", hours,minutes,secons)
    }
    
    
}
