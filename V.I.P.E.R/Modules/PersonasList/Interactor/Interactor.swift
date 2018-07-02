//
//  PersonaInteractor.swift
//  V.I.P.E.R
//
//  Created by David on 30/12/2017.
//  Copyright © 2017 David. All rights reserved.
//

import Foundation

class PersonaInteractor:InteractorProtocolInput {

    var presenter: PersonaPresenter?
    let dataManager: PersonaLocalDataManager?
    
    init() {
        dataManager = PersonaLocalDataManager()
    }
    
    func addNewPersonWithData(name:String, surname:String) {
        
        if  name.count > 0 && surname.count > 0 {
            var persona = Persona()
            
            persona.nombre = name
            persona.apellido = surname
            
            if var personas = self.dataManager?.Personas {
                dataManager?.Personas?.append(persona)
            } else {
                dataManager?.Personas = [Persona]()
                dataManager?.Personas?.append(persona)
            }
        }
        
        self.UpdateList()
    }
    
    // Update List to presenter
    func UpdateList() {
        var arrayPersonas = [String]()
        
        for persona in dataManager!.Personas! {
            arrayPersonas.append(persona.apellido!.uppercased() + ", " + persona.nombre!)
        }
        
        presenter!.updateObjects(objects: arrayPersonas)
    }
    
}
