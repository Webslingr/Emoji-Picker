//
//  ContentView.swift
//  Emoji Picker
//
//  Created by Jason Sunnyassy on 05/06/2024.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 🔥, 🎉, 🥳, 🍕
}

struct ContentView: View {
    
    @State var selection: Emoji = .🎉
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Select an emoji")
            .padding(50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
