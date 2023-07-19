//
//  ContentView.swift
//  SwiftUI-ColorPicker
//
//  Created by Pasan Bopagamage on 2023-07-19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedColor: Color = .red
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(selectedColor)
                .frame(width: 200, height: 200)
                .padding()
            
            Form {
                ColorPicker("Change Circle Color", selection:
                                $selectedColor)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
