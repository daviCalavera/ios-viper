//
//  InputOutput.swift
//  V.I.P.E.R
//
//  Created by David on 30/12/2017.
//  Copyright © 2017 David. All rights reserved.
//

import Foundation

protocol InteractorProtocolInput {
    
    func addNewPersonWithData(name:String , surname:String)
}

protocol InteractorProtocolOutput {
    
    func updateObjects(objects:[String])
}
