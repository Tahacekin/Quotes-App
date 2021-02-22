//
//  ContentView.swift
//  Quotes
//
//  Created by Taha Çekin on 22.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var quotsV = QuotesModel()
    
    var body: some View {
      
        
        NavigationView {
            
            ScrollView {
                
                ForEach(quotsV.quots) { q in
                    
                    NavigationLink(
                        destination: DataLink(allQ: q),
                        label: {
                            
                            ZStack {
                                Image(q.image)
                                    .resizable()
                                    .scaledToFill()
                                    .cornerRadius(20)
                                VStack(alignment: .leading) {
                                    Text(q.quot)
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                    Text(" -" + q.name)
                                        .foregroundColor(Color.white)
                                    
                                }
                            }
                            .padding([.leading, .bottom, .trailing])
                        })
                    
                    // To change the allignment of everything just change the stack
                    // Think straightforward you can do anything you want
                    
                    
                    
                    
                    
                    
                    
                    
                }.navigationBarTitle("Quotes")
                
            }
        }
    
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
