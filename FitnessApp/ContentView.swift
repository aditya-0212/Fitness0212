//
//  ContentView.swift
//  FitnessApp
//
//  Created by APPLE on 26/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        VStack {
           TextField("enter your name",text: $name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
