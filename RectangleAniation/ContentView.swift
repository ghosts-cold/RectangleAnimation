//
//  ContentView.swift
//  RectangleAniation
//
//  Created by Дима Васильев on 10.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State var isPressSignIn = false
    var body: some View {
        NavigationStack{
            ZStack {
              Color("backgroundColor")
                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        Button(action: {
                            isPressSignIn.toggle()
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 200, height: 50, alignment: .center)
                                    .foregroundStyle(Color("cardColor"))
                                Text("Sign in")
                                    .foregroundStyle(.white)
                            }
                        }).fullScreenCover(isPresented: $isPressSignIn) {
                            GeneralMenu()
                        }
                    }
                }
            }
            .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
