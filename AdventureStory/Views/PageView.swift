//
//  PageView.swift
//  AdventureStory
//
//  Created by Nordo on 3/16/23.
//

import SwiftUI

struct PageView: View {
    @Binding var choiceMade: Int
    
    var body: some View {
        
        let currentPage: Story = stories[choiceMade]
        
        NavigationStack{
            ZStack {
                Image("forestbackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image(currentPage.storyImage)
                        .resizable()
                        .scaledToFit()
                    Text(currentPage.storyText)
                        .padding()
                        .background(.gray)
                    
                    if currentPage.endOfStory {
                        //display the end
                        NavigationLink(destination: ContentView()) {
                            Text("Start Over")
                        }
                        .buttonStyle(ChoiceButtonStyle(backgroundColor: .blue))
                        
                    } else {
                        NavigationLink(destination: PageView(choiceMade: .constant(currentPage.choice1Destination))) {
                            Text(currentPage.choice1)
                        }
                        .buttonStyle(ChoiceButtonStyle(backgroundColor: .pink))
                        
                        NavigationLink(destination: PageView(choiceMade: .constant(currentPage.choice2Destination))) {
                            Text(currentPage.choice2)
                        }
                        .buttonStyle(ChoiceButtonStyle(backgroundColor: .purple))
                    }
                }
            }
        }
    }
}

struct ChoiceButtonStyle: ButtonStyle {
    var backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.headline)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(choiceMade: .constant(1))
    }
}
