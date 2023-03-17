//
//  ContentView.swift
//  17mars
//
//  Created by Apprenant 18 on 17/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("SF Symbol weather list")
                .font(.largeTitle)
                .padding()
            SymbolLine(symbolName: "sun.min.fill", color: .blue)
            SymbolLine(symbolName: "sun.max.fill", color: .gray)
            SymbolLine(symbolName: "sunrise.fill", color: .green)
            SymbolLine(symbolName: "sunset.fill", color: .orange)
            SymbolLine(symbolName: "sun.dust.fill", color: .pink)
            SymbolLine(symbolName: "sun.haze.fill", color: .purple)
            SymbolLine(symbolName: "cloud.fill", color: .red)
            SymbolLine(symbolName: "cloud.drizzle.fill", color: .yellow)
        }
    }
}


struct SymbolLine: View {
    let symbolName: String
    let color: Color
    
    var body: some View {
        HStack {
            Image(systemName: symbolName)
            Text(symbolName)
        }
        .font(.title)
        .foregroundColor(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
