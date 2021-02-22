//
//  Quotes Model.swift
//  Quotes
//
//  Created by Taha Çekin on 22.02.2021.
//

import Foundation


class QuotesModel: ObservableObject {
    
    @Published var quots = [Quotes]()
    
    init() {
        
        
        self.quots = DataService.getLocaldata()
        
        
    }
    
}

