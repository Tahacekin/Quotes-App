//
//  DataLink.swift
//  Quotes
//
//  Created by Taha Çekin on 22.02.2021.
//

import SwiftUI

struct DataLink: View {
   
    // we don't specify a data type that why we put a dummy view data in
    
    // It is unsett because its going to be diturmned by what the user taps on
    
    var allQ:Quotes
    
    
    var body: some View {
        
       
        
       
        
        
        ScrollView {
            
            
            Text(allQ.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom)
            
            
            // You can use the ForEach code for views like lists but the custmisation is up to you and manual and if you want to use one specific thing use that don't hessitate coding is your own world you can do whatever you want.
            
            
            ForEach(allQ.allQuotes, id: \.self) { q in
                
                Text("- " + q)
                    .padding([.top, .leading, .trailing])
                
                
                
                
            }
            
            
            
        }
    
    
    
    
    
    }
}

struct DataLink_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuotesModel()
        
        DataLink(allQ: model.quots[0])
    }
}
