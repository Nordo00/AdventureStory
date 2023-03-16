//
//  ContentView.swift
//  AdventureStory
//
//  Created by Nordo on 3/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("forestbackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("The Lost Key")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                    Text("Written by you and your children")
                        .font(.headline)
                    NavigationLink(destination: PageView(choiceMade: .constant(0))) {
                        Text("Let's Go!")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
