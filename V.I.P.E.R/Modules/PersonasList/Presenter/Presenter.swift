//
//  PersonaPresenter.swift
//  V.I.P.E.R
//
//  Created by David on 06/12/2017.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class PersonaPresenter:InteractorProtocolOutput {
    
    weak var view:TableViewController!
    var interactor:PersonaInteractor?
    var routing:PersonaRouting?
    
    init() {
        
    }
    
    func addNewObject() {
        routing!.openAddView()
    }
    
    func addNewObjectWithData(name n:String, surname s:String) {
        
        interactor!.addNewPersonWithData(name: n, surname: s)
    }
    
    func updateObjects(objects: [String]) {
        
        view!.setListWithObjects(objects: objects)
    }
}
