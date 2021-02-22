//
//  DataService.swift
//  Quotes
//
//  Created by Taha Çekin on 22.02.2021.
//

import Foundation



class DataService {
    
    // Remember to be able to return you have to specify the data type of your func like -> [Quotes]
    
    static func getLocaldata() -> [Quotes] {
        
        
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else {
            
            return [Quotes]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            let data = try Data(contentsOf: url)
            
            
            let decoder = JSONDecoder()
            
            do {
                
                let quotData = try decoder.decode([Quotes].self , from: data)
                
                
                for q in quotData {
                    
                    q.id = UUID()
                    
                    
                    
                }
                
                return quotData
                
            }
            catch {
                
                print(error)
                
            }
            
        }
        catch {
            
            print(error)
            
        }
        
        
        
        
        
        return [Quotes]()
    }
    
    
    
    
}
