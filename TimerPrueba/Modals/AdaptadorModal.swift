//
//  AdaptadorModal.swift
//  TimerPrueba
//
//  Created by Carlos Hernandez on 25/02/22.
//

import Foundation
import UIKit

class Adaptador_modals
{

    func Crear_Modal_Funcion(Accion_Confirmacion_completion: @escaping (_ Datos: [Any]) -> Void) -> TimerFormulario
    {
        let storyboard = UIStoryboard(name: "FormularioTimer", bundle: .main)
        
        let modal = storyboard.instantiateViewController(identifier: "identificador_formulario") as! TimerFormulario
        
        modal.Accion_Confirmacion = Accion_Confirmacion_completion
        
        return modal
    }
}
